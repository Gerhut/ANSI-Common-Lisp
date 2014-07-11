(defstruct (node (:print-function
                  (lambda (n s d)
                    (format s "#<~A>" (node-elt n)))))
  elt (l nil) (r nil))

(defun bst-insert (obj bst <)
  (if (null bst)
      (make-node :elt obj)
      (let ((elt (node-elt bst)))
        (if (eql obj elt)
            bst
            (if (funcall < obj elt)
                (make-node
                   :elt elt
                   :l (bst-insert obj (node-l bst) <)
                   :r (node-r bst))
                (make-node
                   :elt elt
                   :r (bst-insert obj (node-r bst) <)
                   :l (node-l bst)))))))

(defun bst-most2least (bst)
  (if (null bst)
    nil
    (append (bst-most2least (node-r bst))
            (list (node-elt bst))
            (bst-most2least (node-l bst)))))

(setf nums nil)
(dolist (x '(5 8 4 2 1 9 6 7 3))
  (setf nums (bst-insert x nums #'<)))

(princ (bst-most2least nums))
