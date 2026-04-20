(: Nombre: Adrián Cuevas Martínez :)

for $j in /jugadores/jugador
let $eq := doc("equipos.xml")//equipo[nombre = $j/equipo]
where $eq
return
  <jugador>
    <nombre>{$j/nombreCompleto/text()}</nombre>
    <equipo>{$j/equipo/text()}</equipo>
    <pais_equipo>{$eq/pais/text()}</pais_equipo>
    <liga>{$eq/liga/text()}</liga>
  </jugador>