(: Nombre: Adrián Cuevas Martínez :)

declare function local:jugadoresPorEquipo($equipo as xs:string) {
  for $j in doc("jugadores.xml")//jugador[equipo = $equipo]
  return <nombre>{concat($j/@cod, " -- ", $j/nombreCompleto/text())}</nombre>
};

local:jugadoresPorEquipo("Liverpool FC")