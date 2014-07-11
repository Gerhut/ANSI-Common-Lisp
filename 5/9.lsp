(defun shortest-path (start end net)
  (catch 'result
         (bfs end (list (list start)) net)))

(defun bfs (end queue net)
  (if (null queue)
      nil
      (let ((path (car queue)))
        (let ((node (car path)))
          (if (eql node end)
              (throw 'result (reverse path))
              (bfs end
                   (append (cdr queue)
                           (new-paths path node net))
                   net))))))

(defun new-paths (path node net)
  (mapcar #'(lambda (n)
              (cons n path))
          (cdr (assoc node net))))

(setf min '((a b c) (b c) (c d)))
(princ (shortest-path 'a 'd min))
