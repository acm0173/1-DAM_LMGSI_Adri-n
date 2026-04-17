(: Nombre: Adrián Cuevas Martínez :)

let $fr := /jugadores/jugador[pais = "Francia"]
let $ord := for $j in $fr order by $j/nombreCompleto return $j

return
<html>
  <head>
    <title>Jugadores de Francia</title>
    <style>
      table {{ border-collapse: collapse; width: 50%; }}
      th, td {{ border: 1px solid black; padding: 8px; }}
      th {{ background-color: #ddd; }}
    </style>
  </head>

  <body>
    <h1>Jugadores de Francia</h1>
    <table>
      <tr><th>Nombre</th><th>Equipo</th></tr>
      {
        for $j in $ord
        let $eq := ($j/equipo, $j/club, $j/team, $j/equipoActual)[1]
        return
          <tr>
            <td>{ $j/nombreCompleto/text() }</td>
            <td>{ $eq/text() }</td>
          </tr>
      }
    </table>
  </body>
</html>
