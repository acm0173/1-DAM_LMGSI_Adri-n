<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:output method="xml" indent="yes"/>
  
  <xsl:template match="/catalogo">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="A4"
                               page-height="29.7cm" page-width="21cm" margin="2cm">
          <fo:region-body/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      
      <fo:page-sequence master-reference="A4">
        <fo:flow flow-name="xsl-region-body">
          
          <fo:block font-size="24pt" text-align="center" margin-bottom="20pt"
                    border="solid 2px chocolate" padding="5pt">
            Catálogo de Videojuegos
          </fo:block>
          
          <xsl:apply-templates/>
          
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
  
  <xsl:template match="videojuego">
    <fo:block font-size="12pt" margin-bottom="15pt">
      
      <fo:block font-weight="bold" border-bottom="solid 1px black" margin-bottom="5pt">
        Videojuego
      </fo:block>
      
      <fo:block><fo:inline font-weight="bold">Nombre: </fo:inline><xsl:value-of select="nombre"/></fo:block>
      <fo:block><fo:inline font-weight="bold">Precio: </fo:inline><xsl:value-of select="precio"/></fo:block>
      <fo:block><fo:inline font-weight="bold">Descripción: </fo:inline><xsl:value-of select="descripcion"/></fo:block>
      <fo:block><fo:inline font-weight="bold">Puntuación: </fo:inline><xsl:value-of select="puntuacion"/></fo:block>
      
    </fo:block>
  </xsl:template>
  
</xsl:stylesheet>
