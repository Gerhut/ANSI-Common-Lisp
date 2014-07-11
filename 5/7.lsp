;递归

(defun f (lst)
  (or (= (length lst) 1)
      (and (= (abs (- (first lst) (second lst))) 1)
           (f (cdr lst)))))

(princ (f '(1 2 3 4 3 2 3 4)))
(princ (f '(1 2 3 4 6 5 8 4)))

;do

(defun f (lst)
  (let ((result t))
    (do ((x 0 (+ x 1)))
      ((= x (- (length lst) 1)) result)
      (setf result
            (and result
                 (= (abs (- (nth x lst) (nth (+ x 1) lst))) 1))))))

(princ (f '(1 2 3 4 3 2 3 4)))
(princ (f '(1 2 3 4 6 5 8 4)))

;mapc 与 return

(defun f (lst)
  (mapc #'(lambda (x y)
            (if (not (= (abs (- x y)) 1))
              (return-from f nil)))
        lst
        (cdr lst))
  t)

(princ (f '(1 2 3 4 3 2 3 4)))
(princ (f '(1 2 3 4 6 5 8 4)))
