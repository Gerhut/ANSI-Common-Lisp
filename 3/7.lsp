(defun compress (x)
  (if (consp x)
      (compr (car x) 1 (cdr x))
      x))

(defun compr (elt n lst)
  (if (null lst)
      (list (n-elts elt n))
      (let ((next (car lst)))
        (if (eql next elt)
            (compr elt (+ n 1) (cdr lst))
            (cons (n-elts elt n)
                  (compr next 1 (cdr lst)))))))

(defun n-elts (elt n)
  (if (> n 1)
      (cons n elt)
      elt))

(setf c '(1 1 1 0 1 0 0 0 0 1))
(format t "~A~%" c)

(setf c (compress c))
(format t "~A~%" c)

(defun uncompress (lst)
  (if (null lst)
      nil
      (let ((elt (car lst))
            (rest (uncompress (cdr lst))))
        (if (consp elt)
            (append (list-of elt)
                    rest)
            (cons elt rest)))))

(defun list-of (elt)
  (let ((n (car elt))
        (e (cdr elt)))
  (if (zerop n)
      nil
      (cons e (list-of (cons (- n 1) e))))))

(setf c (uncompress c))
(format t "~A~%" c)
