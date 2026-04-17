(: Nombre: Adrián Cuevas Martínez :)

for $j in /jugadores/jugador
let $nombre := $j/nombreCompleto/text()
let $equipo := $j/equipo/text()
let $pos := substring($j/posicion, 1, 3)
order by $equipo ascending
return
  <jugador>{concat($nombre, " -- ", $equipo, " -- ", $pos)}</jugador>