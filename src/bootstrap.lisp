(in-package :pddl)
(use-syntax :annot)

@export
(defun parse-file (pathname)
  (with-open-file (s pathname)
    (parse-stream s)))

@export
(defun parse-stream (s)
  (eval (read s)))

(export '(domain problem))

@export
(defmacro define (type &body body)
  (ematch type
    ((list 'domain name)
     `(progn
	(defparameter ,name ,(parse-domain-def name body))
	',name))
    ((list 'problem name)
     `(progn
	(defparameter ,name ,(parse-problem-def name body))
	',name))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; bare parser

(defun parse-domain-def (name body)
  ;; special variable, used in 
  ;; the initialization of subclause objects.
  (let ((*domain* (pddl-domain :name name)))
    (macrolet ((body-domain (accessor)
		 `(setf (,accessor *domain*)
			(,(concatenate-symbols 'parse accessor) body))))
      (body-domain requirements)
      (body-domain types)
      (body-domain predicates)
      (body-domain constants)
      (body-domain functions)
      (body-domain actions)
      (body-domain durative-actions)
      (body-domain derived-predicates))
    *domain*))

(defun parse-problem-def (name body)
  (let* (;; these special variables are used in
	 ;; the initialization of subclause objects.
	 (*domain* (parse-domain body))
	 (*problem* (pddl-problem :name name)))
    (macrolet ((body-problem (accessor)
		 `(setf (,accessor *problem*)
			(,(concatenate-symbols 'parse accessor) body))))
      (handler-bind ((not-found-in-dictionary
		      #'intern-variable-handler))
	(let ((*params* (body-problem objects)))
	  (body-problem init)
	  (body-problem goal)      
	  (body-problem metric)))
      *problem*)))