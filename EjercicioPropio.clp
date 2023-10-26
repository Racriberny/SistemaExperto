(deffacts hechos-iniciales
 (tiene-dos-ruedas)
 (tiene-puno-gas)
 (no-tiene-motor)
 (tiene-cuatro-ruedas)
 (tiene-techo)
 (descapotable))

(defrule moto-1
 (tiene-dos-ruedas)
 (tiene-puno-gas)
 =>
 (assert (es-moto)))

(defrule moto-2
 (tiene-cuatro-ruedas)
 =>
 (assert (es-coche)))

 (defrule coche-1
 (tiene-cuatro-ruedas)
 (tiene-techo)
 =>
 (assert (es-coche-con-techo)))

 (defrule coche-2
 (tiene-cuatro-ruedas)
 (no-tiene-techo)
 =>
 (assert (es-coche-descapotable)))

 (defrule bici-1
 (tiene-dos-ruedas)
 (no-tiene-motor)
 =>
 (assert (es-bici)))

(defrule bici
 (tiene-dos-ruedas)
 (no-tiene-motor)
 =>
 (printout t "Es una bici" crlf))

 (defrule coche
 (tiene-cuatro-ruedas)
 (es-electrico)
 =>
 (printout t "Es un coche" crlf))



 


