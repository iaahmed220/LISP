(defun eqset(set1 set2)(cond
                        ((null set1) (null set2))
                        ((null set2) nil)
                        ((eq (length set1)(length set2)) (mapc (lambda (e1)(member e1 set2))set1))
))