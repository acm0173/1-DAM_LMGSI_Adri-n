(: Nombre: Adrián Cuevas Martínez :)

declare function local:jugadoresPorEquipo($equipo as xs:string) {
  for $j in /jugadores/jugador
  where lower-case($j/equipo) = lower-case($equipo)
  return <nombre>{concat($j/@cod, " -- ", $j/nombreCompleto/text())}</nombre>
};

local:jugadoresPorEquipo("Paris Guardians")