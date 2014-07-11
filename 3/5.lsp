(defun pos+ (lst)
  (defun pos+inner (lst pos)
    (if (null lst)
      nil
      (cons
        (+ (car lst) pos)
        (pos+inner (cdr lst) (+ pos 1)))))
  (pos+inner lst 0))

(format t "~A~%" (pos+ '(7 5 1 4)))

(defun pos+ (lst)
  (let ((result nil)
        (lstlen (length lst)))
    (do ((pos 0 (+ pos 1)))
      ((= pos lstlen) result)
      (setf result
            (append result
                    (list (+ (nth pos lst) pos)))))))

(format t "~A~%" (pos+ '(7 5 1 4)))

(defun pos+ (lst)
  (let ((pos -1))
    (mapcar
      (lambda (obj)
        (setf pos (+ pos 1))
        (+ obj pos))
      lst)))

(format t "~A~%" (pos+ '(7 5 1 4)))
