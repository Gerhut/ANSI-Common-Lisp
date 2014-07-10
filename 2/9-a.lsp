(defun summit (lst)
  (setf lst (remove nil lst))
  (apply #'+ lst))

(format t "~A" (summit '(nil 2 3 nil 5)))
