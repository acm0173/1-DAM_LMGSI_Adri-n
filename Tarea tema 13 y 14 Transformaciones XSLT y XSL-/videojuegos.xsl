<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  
  <!-- Plantilla principal -->
  <xsl:template match="/catalogo">
    <html>
      <head>
        <title>Tabla de Videojuegos</title>
        <style>
          table {
          border-collapse: collapse;
          width: 60%;
          margin: 20px auto;
          box-shadow: 0px 0px 10px grey;
          }
          th {
          background-color: #159dcc;
          color: white;
          padding: 10px;
          border: 2px solid black;
          }
          td {
          padding: 10px;
          border: 2px solid black;
          text-align: center;
          }
        </style>
      </head>
      
      <body>
        <h2 style="text-align:center;">Catálogo de Videojuegos</h2>
        
        <table>
          <tr>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Puntuación</th>
          </tr>
          
          <!-- Recorrer videojuegos -->
          <xsl:for-each select="videojuego">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="puntuacion"/></td>
            </tr>
          </xsl:for-each>
          
        </table>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>