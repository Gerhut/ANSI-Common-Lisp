(defun showdots (lst)
  (if (consp lst)
    (progn
      (format t "(")
      (showdots (car lst))
      (format t " . ")
      (showdots (cdr lst))
      (format t ")"))
    (format t "~A" lst)))

(showdots '(a b c))
