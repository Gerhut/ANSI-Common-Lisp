(defstruct tree
  e
  (l nil)
  (m nil)
  (r nil))

(defun tree-copy (tree)
  (if (null tree)
    nil
    (make-tree :e (tree-e tree)
               :l (tree-copy (tree-l tree))
               :m (tree-copy (tree-m tree))
               :r (tree-copy (tree-r tree)))))

(defun tree-in (obj tree)
  (if (null tree)
    nil
    (if (eql obj (tree-e tree))
      t
      (or (tree-in obj (tree-l tree))
          (tree-in obj (tree-m tree))
          (tree-in obj (tree-r tree))))))

(setf otree
      (make-tree :e 0
                 :l (make-tree :e 1)
                 :m (make-tree :e 2
                               :l (make-tree :e 3)
                               :m (make-tree :e 4)
                               :r (make-tree :e 5))
                 :r (make-tree :e 6)))

(princ (tree-copy otree))
(princ (tree-in 3 otree))
(princ (tree-in 10 otree))
