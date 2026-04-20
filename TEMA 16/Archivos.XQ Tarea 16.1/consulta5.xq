(: Nombre: Adrián Cuevas Martínez :)

<jugadores_espana>
{
  for $j in /jugadores/jugador[pais = "España"]
  return
    <jugador cod="{$j/@cod}">
      <nombreCompleto>{$j/nombreCompleto/text()}</nombreCompleto>
      <nacimiento>{$j/nacimiento/text()}</nacimiento>
      <categoria>{
        if ($j/nacimiento < 1995) then "veterano" else "activo"
      }</categoria>
    </jugador>
}
</jugadores_espana>

