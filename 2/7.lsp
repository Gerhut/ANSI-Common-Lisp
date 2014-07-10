(defun has-list (x)
  (and (not (null x))
       (or (listp (car x))
           (has-list (cdr x)))))

(format t "~A~%" (has-list '(1 2 3 (4 5))))
(format t "~A~%" (has-list '(1 2 3 4 5)))
