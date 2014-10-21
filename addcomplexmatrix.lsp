(defun cadd(l1 l2)(cond
                   ((null l1) l2)
                   (t         (mapcar #'caddhelp l1 l2))
                   )
)

(defun caddhelp(sex1 sex2)(cond
                           ((numberp (first sex1)) (add sex1 sex2))
                           (t                      (append (cadd (list (car sex1)) (list (Car sex2))) (cadd (cdr sex1) (cdr sex2))))))

(defun add(sex1 sex2)(mapcar #'+ sex1 sex2))