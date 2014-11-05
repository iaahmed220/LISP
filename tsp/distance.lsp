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