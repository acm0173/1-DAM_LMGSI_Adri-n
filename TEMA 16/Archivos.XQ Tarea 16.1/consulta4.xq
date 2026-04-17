(: Nombre: Adrián Cuevas Martínez :)

let $fr := /jugadores/jugador[pais = "Francia"]
let $ord := for $j in $fr order by $j/nombreCompleto return $j

return
<html>
  <head>
    <title>Jugadores de Francia</title>
    <style>
      table {{ border-collapse: collapse; width: 60%; }}
      th, td {{ border: 1px solid black; padding: 8px; }}
      th {{ background-color: #ccc; }}
    </style>
  </head>

  <body>
    <h1>Jugadores de Francia</h1>
    <table>
      <tr><th>Nombre</th><th>Equipo</th></tr>
      {
        for $j in $ord
        return
          <tr>
            <td>{ $j/nombreCompleto/text() }</td>
            <td>{ $j/equipo/text() }</td>
          </tr>
      }
    </table>
  </body>
</html>