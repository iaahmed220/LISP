(defun distance (n1 n2) 
(prog (temp lis1 lis2)
  (setf temp n1)
  (setf lis1 (get n2 'neighbors))
  (setf lis2 (get n2 'dist))
LOOP
(cond 
 ((equal temp (first lis1)) (return (first lis2)))
 ('else (setf lis1 (rest lis1)) (setf lis2 (rest lis2))))
(go loop)))





(defun myexp (path)
  (mapcan 
   (lambda(e1) 
    (cond ((member e1 path) nil)
          (t (list (cons e1 path))) ))
   (get (car path) 'neighbors)))





(defun depart (st fin)
  (prog (q e)
    (setf q (list (list st)))
  LOOP
    (cond 
     ((null q) (return nil))
     ((equal fin (caar q))
      (print (append (list (pthl (car q)))
                     (reverse (car q)) )) ))
    (setf e (myexp (car q)))
    (setf q (cdr q))
    (setf q (append e q))
    (setf q (sort q #'arrange))
    (go LOOP)))







    