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




    