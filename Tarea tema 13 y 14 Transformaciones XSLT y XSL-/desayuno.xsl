<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>
    
    <xsl:template match="/">
            <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="desayuno">
        <desayuno>
            <xsl:attribute name="calorias">
                <xsl:value-of select="calorias"/>
            </xsl:attribute>
            <nombre><xsl:value-of select="nombre"/></nombre>
            <precio><xsl:value-of select="precio"/></precio>
            <descripcion><xsl:value-of select="descripcion"/></descripcion>
            <xsl:element name="precio_con_iva">
                <xsl:value-of select="precio*1.16"/>
            </xsl:element>
        </desayuno>
    </xsl:template>
</xsl:stylesheet>