<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/catalogo">
    <html>
      <head>
        <style>
          table{border:solid 2px black; box-shadow:10px 10px 10px grey;}
          th{color:white;background-color:#159dcc;}
          td{border:solid 2px black;}
        </style>
      </head>
      <body>
        <table>
          <th>Nombre</th>
          <th>Precio</th>
          
          <xsl:for-each select="videojuego">
            <xsl:sort select="precio" data-type="number" order="descending"/>
            
            <xsl:comment> xsl:sort sirve para ordenar el contenido de cada elemento de una forma u otra, en este caso al utilizar "data-type = number" order = descending" 
              de esta forma estamos diciendole al programa que ordene el contenido por numeros de manera descendiente </xsl:comment>
            
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="precio"/></td>
            </tr>
            
          </xsl:for-each>
          
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
