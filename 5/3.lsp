(defun big-square (n)
  (if (<= n 5)
    (return-from big-square)
    (* n n)))

(princ (big-square 3))
(princ (big-square 10))

