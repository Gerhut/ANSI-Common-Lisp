(defun mystery (x y)
  (cond ((null y) nil)
        ((eql (car y) x) 0)
        (t
          (let ((z (mystery x (cdr y))))
            (and z (+ z 1))))))

(princ (mystery 5 '(1 2 3 4 5 6 7 8 9)))
