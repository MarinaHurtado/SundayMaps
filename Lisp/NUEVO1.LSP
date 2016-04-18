(defun prueba (lst)
(setq num 0 sim 0)
(cuenta lst)
(prin1 'numeros:) (print num)
(prin1 'simbolos:) (print sim))

(defun cuenta (lst)
((null lst))
((atom (car lst))
	(((numberp (car lst)) (incq num))
	  (incq sim)) (cuenta (cdr lst)))
(cuenta (car lst))
(cuenta (cdr lst)))
