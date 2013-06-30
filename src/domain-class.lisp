
(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*


;; (defmacro define-class-pattern (class-name)
;;   (let ((c (find-class class-name)))
;;     `(eval-when (:load-toplevel :execute)
;;        (defpattern ,class-name ,(class-slot-names c)
;; 	 `(,',class-name
;; 	      ,@(iter (for slot-name in (class-slot-names c))
;; 		      (collecting `(,slot-name slot-name))))))))

;; (define-class-pattern pddl-domain)

(defmacro define-pddl-class (name superclass slots)
  `(eval-when (:compile-toplevel :load-toplevel :execute)
     (defclass* ,name ,superclass
       ,slots
       (:EXPORT-P t)
       :EXPORT-SLOTS
       :AUTOMATIC-ACCESSORS
       :AUTOMATIC-INITARGS)
     (define-constructor ,name)))

(define-pddl-class pddl-domain ()
  (name
   requirements
   types
   predicates
   constants
   functions
   actions
   durative-actions
   derived-predicates))

(define-pddl-class pddl-domain-slot ()
  (domain))

(define-pddl-class pddl-predicate (pddl-domain-slot)
  (name (parameters :type pddl-variable)))


#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (sb-ext:with-unlocked-packages (:cl)
    (define-pddl-class pddl-variable (pddl-domain-slot)
      (name type))))

(defmethod print-object ((v pddl-variable) s)
  (format s "#V<~A ~A>" (type v) (name v)))

#-sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-pddl-class pddl-variable (pddl-domain-slot)
    (name type)))

(define-pddl-class pddl-type (pddl-variable)
  ())

(define-pddl-class pddl-constant (pddl-variable)
  ())

(define-pddl-class pddl-function (pddl-domain-slot)
  (body))

(define-pddl-class pddl-action (pddl-domain-slot)
  (name
   (parameters :type pddl-variable)
   precondition
   effect))

#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (sb-ext:with-unlocked-packages (:cl)
    (define-pddl-class pddl-durative-action (pddl-domain-slot)
      (name
       (parameters :type pddl-variable)
       duration
       condition
       effect))))

#-sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-pddl-class pddl-durative-action (pddl-domain-slot)
    ((parameters :type pddl-variable)
     condition
     effect)))



(define-pddl-class pddl-derived-predicate (pddl-domain-slot)
  ((parameters :type pddl-variable)
   effect))
