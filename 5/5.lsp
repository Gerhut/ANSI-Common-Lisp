;迭代

(defun precedes (x v)
  (let ((result nil))
    (dotimes (i (- (length v) 2) result)
      (if (eql (aref v (+ i 1)) x)
        (setf result
              (union result
                     (list (aref v i))))))))

(princ (precedes #\a "abracadabra"))

;递归

(defun precedes (x y)
  (if (<= (length y) 1) (return-from precedes nil))
  (union (precedes x (subseq y 1 (length y)))
         (if (eql (aref y 1) x)
           (list (aref y 0)))))

(princ (precedes #\a "abracadabra"))
