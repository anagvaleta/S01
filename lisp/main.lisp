(defun processar-lista (lista)
  (mapcar (lambda (x)
            (if (> x 3) ; verifica se x é maior que 3
                (* x 2) ; multiplica por 2
                (/ x 2))) ; divide por 2
          lista))

(let* ((lista1 (processar-lista '(1 2 3)))
       (lista2 (processar-lista '(4 5 6)))
       (resultado (append lista1 lista2))) ; junta as duas listas
  (print resultado)) ; exibe o resultado no terminal