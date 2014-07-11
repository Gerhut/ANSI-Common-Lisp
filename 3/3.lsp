(defun occurrences (lst)
  (let ((result nil))
    (dolist (obj lst)
      (let ((entry (assoc obj result)))
        (if (null entry)
          (push (cons obj 1) result)
          (setf (cdr entry) (+ (cdr entry) 1)))))
    (sort result (lambda (x y)
                   (> (cdr x) (cdr y))))))

(format t "~A" (occurrences '(a b a d a c d c a)))
