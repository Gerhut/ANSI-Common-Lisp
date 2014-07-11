(defun quarter-turn (ary)
  (let ((dims (array-dimensions ary)))
    (let ((dim (car dims))
          (result (make-array dims)))
      (do ((i 0 (+ i 1)))
        ((= i dim) result)
        (do ((j 0 (+ j 1)))
          ((= j dim) result)
          (setf (aref result i j)
                (aref ary (- dim j 1) i)))))))
    

(princ (quarter-turn #2A((a b) (c d))))
