(defun i-a-count (lst)
  (let ((n 0))
    (dolist (obj lst)
      (if (eq obj 'a)
        (setf n (+ n 1))))
    n))

(defun r-a-count (lst)
  (if (null lst)
    0
    (let ((n (r-a-count (cdr lst))))
      (if (eq (car lst) 'a)
        (+ 1 n)
        n))))

(format t "~A~%" (i-a-count '(a b c d a)))
(format t "~A~%" (r-a-count '(b c d a a)))
