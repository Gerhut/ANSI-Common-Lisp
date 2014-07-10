(defun i-dots (n)
  (do ((i 0 (+ i 1)))
    ((eq i n))
     (format t "."))
  (format t "~%"))

(defun r-dots (n)
  (if (> n 0)
    (progn 
      (format t ".")
      (r-dots (- n 1)))
    (format t "~%")))

(i-dots 10)
(r-dots 10)
