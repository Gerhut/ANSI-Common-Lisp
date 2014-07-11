(defun new-union (x y)
  (let ((result (copy-list x)))
    (dolist (obj y)
      (if (not (member obj result))
        (setf result (append result (list obj)))))
    result))

(format t "~A" (new-union '(a b c) '(b a d)))
