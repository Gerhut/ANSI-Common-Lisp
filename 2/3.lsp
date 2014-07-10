(defun my-fourth (x)
  (car (cdr (cdr (cdr x)))))
(format t "~A"
        (my-fourth '(1 2 3 4 5)))
