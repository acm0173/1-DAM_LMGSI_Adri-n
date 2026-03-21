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
      </head>
      <body>
        <table>
          <th>Nombre</th>
          <th>Precio</th>
          
          <xsl:for-each select="videojuego">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              
              <xsl:choose>
                <xsl:when test="precio &lt; 20">
                  <td id="barato"><xsl:value-of select="precio"/></td>
                </xsl:when>
                
                <xsl:when test="precio &gt; 60">
                  <td id="caro"><xsl:value-of select="precio"/></td>
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
