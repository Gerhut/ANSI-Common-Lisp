(defun summit (lst)
  (if (null lst)
    0
    (let ((x (car lst)))
      (if (null x)
        (summit (cdr lst))
        (+ x (summit (cdr lst)))))))

(format t "~A" (summit '(5 nil 2 3 nil)))
