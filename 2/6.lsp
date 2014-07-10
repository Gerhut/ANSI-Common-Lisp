(format t "~A~%"
        (car (car (cdr '(a (b c) d)))))
(format t "~A~%"
        (or 13 (/ 1 0)))
(format t "~A~%"
        (apply #'list 1 nil))
