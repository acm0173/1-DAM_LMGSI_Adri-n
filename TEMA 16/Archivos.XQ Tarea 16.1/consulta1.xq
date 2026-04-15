(: Nombre: Adrián Cuevas Martínez :)

for $jug in doc("jugadores.xml")//jugador
order by $jug/equipo

return
<jugador>{
    concat($jug/nombreCompleto, " -- ",
           $jug/equipo, " -- ",
           substring($jug/posicion, 1, 3))
  }</jugador>