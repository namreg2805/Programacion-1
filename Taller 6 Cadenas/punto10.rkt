;Hacer una función que reciba una cadena de caracteres e indique si es palíndrome. Una cadena de caracteres es palíndrome si se lee igual al derecho que al revés. Ejemplo: “ojo”, “abcdedcba”, “a”, “dabalearrozalazorraelabad”.
(display"Ingrese una cadena de caracteres:")
(newline)
(define micadena (read-line))
(define tamaño (string-length micadena))
(define cad_aux (make-string tamaño))
(define(invertir micadena cad_aux posi posf)
  (if(<= posi posf)
     (begin
       (string-set! cad_aux (- posf posi)(string-ref micadena posi))
       (invertir micadena cad_aux (+ posi 1) posf )
      )
      cad_aux
   )
)
  (if(equal? micadena (invertir micadena cad_aux 0 (- tamaño 1)))
     (display"La cadena es Palindrome")
     (display"La cadena no es Palindrome")
   )
(newline)
(invertir micadena cad_aux 0 (- tamaño 1))