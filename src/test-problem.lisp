(in-package :pddl)
(cl-syntax:use-syntax :annot)

;;; FD
;;;; wrapper functions

(defun ulimit (rlimit)
  (case rlimit
    ((:infinity) "unlimited")
    (t rlimit)))

(defun wrap-option (string)
  (format nil "~{\"~a\" ~}" (split " " string)))

;;;; parameters

(defparameter *fd-dir* (pathname-as-directory #p"~/repos/downward"))
(defparameter *opt-options* (wrap-option "--search astar(lmcut())"))
(defparameter *lama-options* "ipc seq-sat-lama-2011")
(defparameter *fd-options* *lama-options*)
(defvar *system*
  (pathname-as-directory 
   (asdf:system-source-directory :pddl)))
(defparameter *test-problem*
  (merge-pathnames "planner-scripts/test-problem.sh" *system*))

;; in order to make it work on 32bit systems
(defparameter *memory-limit*
  #+X86
  :infinity ;MOST-POSITIVE-FIXNUM
  #+X86-64
  (rlimit +rlimit-address-space+))

(defparameter *soft-time-limit*
  #+X86
    :infinity ;MOST-POSITIVE-FIXNUM
  #+X86-64
  (rlimit +rlimit-cpu-time+))

(defparameter *hard-time-limit*
  #+X86
  :infinity ;MOST-POSITIVE-FIXNUM
  #+X86-64
  (rlimit +rlimit-cpu-time+))

;;;; helpers

(define-condition plan-not-found (warning)
  ((problem-path :initarg :problem-path)
   (domain-path :initarg :domain-path))
  (:report (lambda (c s)
             (with-slots (problem-path domain-path) c
                (format s "Failed to find a plan! ~a"
                        (pathname-directory-pathname
                         problem-path))))))

;; http://www.ymeme.com/slurping-a-file-common-lisp-83.html
(defun slurp (stream)
  (let ((seq (make-array (file-length stream)
                         :element-type 'character
                         :fill-pointer t)))
    (setf (fill-pointer seq) (read-sequence seq stream))
    seq))

(defun read-file (path)
  (with-input-from-file (s path)
    (slurp s)))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun pathname-p (path)
    "defined for optima matcher"
    (pathnamep path)))

(declaim (ftype (function ((or pathname string) string) real)
                elapsed-time max-memory))

(defun elapsed-time (problem kind)
  "Parse the log file and extract the elapsed time in seconds"
  (ematch (pathname problem)
    ((pathname- name directory)
     (handler-case
         (or (register-groups-bind (user-in-seconds)
                 ("user ([.0-9]*)"
                  (read-file
                   (make-pathname
                    :type "log"
                    :directory directory
                    :name (concatenate 'string name "." kind))))
               (if user-in-seconds
                   (read-from-string user-in-seconds)
                   -1))
             -1)
       (error (c)
         (declare (ignore c))
         -1)))))

(defun max-memory (problem kind)
  "Parse the log file and extract the elapsed time in kB"
  (ematch (pathname problem)
    ((pathname- name directory)
     (handler-case
         (or (register-groups-bind (user-in-seconds)
                 ("maxmem ([.0-9]*)"
                  (read-file
                   (make-pathname
                    :type "log"
                    :directory directory
                    :name (concatenate 'string name "." kind))))
               (if user-in-seconds
                   (read-from-string user-in-seconds)
                   -1))
             -1)
       (error (c)
         (declare (ignore c))
         -1)))))

(defun complete (problem search-keyword)
  "Parse the log file and extract if the search explored the state space completely.
Secondary value tells if the log file was found."
  (ematch (pathname problem)
    ((pathname- name directory)
     (let ((log (make-pathname
                 :type "log"
                 :directory directory
                 :name (concatenate 'string name "." "search"))))
       (if (probe-file log)
           (values (scan search-keyword (read-file log)) t)
           (values nil nil))))))

;;;; main function

(declaim (ftype (function ((or string pathname)
                           (or string pathname)
                           &key
                           (:stream stream)
                           (:error stream)
                           (:options string)
                           (:verbose boolean)
                           (:memory (or integer keyword))
                           (:time-limit (or integer keyword))
                           (:hard-time-limit (or integer keyword)))
                          (values list real real real real real real
                                  boolean))
                test-problem))

(define-condition unix-signal ()
  ((signo :initarg :signo :reader signo)))

(defun %signal (signo)
  (format *error-output* "~&received ~A~%" (signal-name signo))
  (signal 'unix-signal :signo signo)
  (sb-ext:exit :code 1 :abort t))

(defun finalize-process (process verbose)
  (when (sb-ext:process-alive-p process)
    (when verbose
      (format t "~&Sending signal 15 to the test-problem process..."))
    (sb-ext:process-kill process 15) ; SIGTERM
    (sb-ext:process-wait process t)))

(defun test-problem (problem
                     domain
                     &key
                       (stream *standard-output*)
                       (error *error-output*)
                       (options *fd-options*)
                       verbose
                       (memory *memory-limit*)
                       (time-limit *soft-time-limit*)
                       (hard-time-limit *hard-time-limit*))
  "Runs test-problem.sh with the following arguments.

  problem, domain : the pathnames of pddl files.
  options : a string which will be the search and heuristic options to downward.
  memory : number[kByte], given to ulimit -m
  time-limit : number[sec.], given to ulimit -t

returns:
  a list of pathnames of plan files
  elapsed-times of translate, preprocess, search
  max-memory of translate, preprocess, search,
  and finally a boolean, which tells if the search completed (all solution was found).
"
  (let ((problem (pathname problem))
        (domain (pathname domain)))
    (fresh-line)
    (restart-case
      (signal-handler-bind ((:int #'%signal)
                            (:xcpu #'%signal))
        (let ((process
               (sb-ext:run-program
                *test-problem*
                (let ((*print-case* :downcase))
                  (mapcar #'princ-to-string
                          `(,@(when verbose `(-v))
                              -m ,(ulimit memory)
                              -t ,(ulimit time-limit)
                              "-T" ,(ulimit hard-time-limit)
                              -o ,options
                              ,problem ,domain)))
                :wait nil :output stream :error error)))
          (unwind-protect
               (sb-ext:process-wait process t)
            (finalize-process process verbose))
          (invoke-restart
           (find-restart 'finish))))
      (finish ()
        (find-plans domain problem error verbose)))))

(defun find-plans (domain problem error verbose)
  (handler-case
      (values
       (sort (block nil
               (run `(pipe (find ,(pathname-directory-pathname problem)
                                 -maxdepth 1
                                 -mindepth 1)
                           (grep (,(pathname-name problem) .plan)))
                    :show verbose
                    :output :lines
                    :on-error (lambda (c)
                                (declare (ignore c))
                                (warn 'plan-not-found
                                      :problem-path problem
                                      :domain-path domain)
                                (return nil))))
             #'string>) ; best one first
       (elapsed-time problem "translate")
       (elapsed-time problem "preprocess")
       (elapsed-time problem "search")
       (max-memory problem "translate")
       (max-memory problem "preprocess")
       (max-memory problem "search")
       (complete problem "Completely explored state space"))
    (file-error (c)
      (format error " Planning failed, File ~a not found!"
              (file-error-pathname c))
      (values nil 0 0 0 0 0 0 nil))))

;;;; general planners

(defparameter *limitsh*
  (merge-pathnames "planner-scripts/limit.sh" *system*))

(defun test-problem-common (problem
                            domain
                            &key
                              (stream *standard-output*)
                              (error *error-output*)
                              options
                              verbose
                              iterated
                              (name (error "no planner name given!"))
                              (memory *memory-limit*)
                              (time-limit *soft-time-limit*)
                              (hard-time-limit *hard-time-limit*))
  (declare (ignore time-limit))
  (let ((problem (pathname problem))
        (domain (pathname domain)))
    (fresh-line)
    (restart-case
      (signal-handler-bind ((:int #'%signal)
                            (:xcpu #'%signal))
        (let ((process
               (sb-ext:run-program
                *limitsh*
                (let ((*print-case* :downcase))
                  (mapcar #'princ-to-string
                          `(-m ,(ulimit memory)
                               -t ,(ulimit hard-time-limit)
                               ,@(when iterated `(-i))
                               ,@(when verbose `(-v))
                               ,@(when options `(-o ,options))
                               -- ,name
                               ,problem ,domain)))
                :wait nil :output stream :error error)))
          (unwind-protect
               (sb-ext:process-wait process t)
            (finalize-process process verbose))
          (invoke-restart
           (find-restart 'finish))))
      (finish ()
        (find-plans-common domain problem verbose)))))

(defun common-memory (problem)
  (block nil
    (ignore-errors
      (parse-integer
       (run `(pipe (grep "maxmem"
                         ,(format nil "~a~a.stat"
                                  (pathname-directory-pathname problem)
                                  (pathname-name problem)))
                   (cut -d " " -f 2))
            :output :string
            :on-error (lambda (c)
                        (declare (ignore c))
                        (return -1)))))))
(defun common-time (problem)
  (block nil
    (ignore-errors
      (parse-integer
       (run `(pipe (grep "cputime"
                         ,(format nil "~a~a.stat"
                                  (pathname-directory-pathname problem)
                                  (pathname-name problem)))
                   (cut -d " " -f 2))
            :output :string
            :on-error (lambda (c)
                        (declare (ignore c))
                        (return -1)))))))
(defun common-complete (problem)
  (probe-file
   (format nil "~a~a.negative"
           (pathname-directory-pathname problem)
           (pathname-name problem))))

(defun common-plans (problem verbose)
  (sort (block nil
          (run `(pipe (find ,(pathname-directory-pathname problem)
                            -maxdepth 1 -mindepth 1)
                      (progn (grep (,(pathname-name problem) .plan))
                             (true)))
               :show verbose :output :lines))
        #'string>))
(defun find-plans-common (domain problem verbose)
  @ignorable domain
  (values
   (common-plans problem verbose)
   (common-time problem)
   (common-memory problem)
   (common-complete problem)))
