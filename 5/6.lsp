;迭代

(defun intersperse (obj lst)
  (let ((result (cons (car lst) nil)))
    (dolist (e (cdr lst) result)
      (setf result (append result (list obj e))))))

(princ (intersperse '- '(a b c d)))

;递归

(defun intersperse (obj lst)
  (cons (car lst)
        (if (> (length lst) 1)
          (cons obj (intersperse obj (cdr lst))))))

(princ (intersperse '- '(a b c d)))
