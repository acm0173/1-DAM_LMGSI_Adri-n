(: Nombre: Adrián Cuevas Martínez :)

let $jug := /jugadores/jugador[nacimiento < 1990]
return
  <resultado>
    <total>{count($jug)}</total>
    {
      for $j at $i in $jug
      return <nombre>{concat($i, ". - ", $j/nombreCompleto/text())}</nombre>
    }
  </resultado>
