(defun ctranspose(mat)
  (if (null (car mat)) nil)
  (cons (mapcar #'car mat) (ctranspose(mapcar #'cdr mat))))