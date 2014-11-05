(defun myexp (path)
  (mapcan 
   (lambda(e1) 
    (cond ((member e1 path) nil)
          (t (list (cons e1 path))) ))
   (get (car path) 'neighbors)))