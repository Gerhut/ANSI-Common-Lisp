(defun longest-path (start end net)
  (bfs end (list (list start)) net nil))

(defun bfs (end queue net longest)
  (if (null queue)
      longest
      (let ((path (car queue)))
        (let ((node (car path)))
          (if (eql node end)
              (setf longest (reverse path)))
          (bfs end
               (append (cdr queue)
                       (new-paths path node net))
               net
               longest)))))

(defun new-paths (path node net)
  (mapcar #'(lambda (n)
              (cons n path))
          (cdr (assoc node net))))

(setf min '((a b c) (b c) (c d)))

(format t "~A" (longest-path 'a 'd min))
