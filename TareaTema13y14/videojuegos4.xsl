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
          #barato{background-color:lightgreen;}   
          #caro{background-color:salmon;}          
        </style>

        <xsl:comment> Define el color salmón para los elementos con el ID "caro" </xsl:comment>
        <xsl:comment> Define el color verde claro para los elementos con el ID "barato" </xsl:comment>
      </head>
      
      <body>
        <table>
          <th>Nombre</th>
          <th>Precio</th>
          
          <xsl:for-each select="videojuego"> <xsl:comment> Dicho de una forma más coloquial, es como decirle a la condicional que haga lo mismo para cada elemento con el nombre "videojuego" 
            haciendo su transformación necesaria </xsl:comment>
            
            <xsl:comment> Esta instrucción se utiliza para recorrer de manera iterativa diversos nodos del documento origen y aplicarles la
            transformación necesaria. </xsl:comment>
            <tr>
              <td><xsl:value-of select="nombre"/></td>

              <xsl:comment> El bloque de (xsl:choose) es el que decide qué color aplicar basándose en el precio del videojuego </xsl:comment>xsl:comment>

              <xsl:choose>                
                <xsl:when test="precio &lt; 20">
                  <td id="barato"><xsl:value-of select="precio"/></td> 
                  <xsl:comment> Se ejecuta si el precio es menor a 20, al asignarle el id="barato" la celda cambiará a verde </xsl:comment>
                </xsl:when>
                
                <xsl:when test="precio &gt; 60">
                  <td id="caro"><xsl:value-of select="precio"/></td>
                  <xsl:comment> Se ejecuta si el precio es menor a 60, al asignarle el id="barato" la celda cambiará a rojo </xsl:comment>
                </xsl:when>
                
                <xsl:otherwise>
                  <td><xsl:value-of select="precio"/></td>
                </xsl:otherwise>
              </xsl:choose>
              
            </tr>
          </xsl:for-each>
          
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
