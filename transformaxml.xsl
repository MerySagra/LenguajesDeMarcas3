<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    <!-- Cambiamos el nombre de la etiqueta raiz -->
        <itt>
            <!-- Creamos un atributos con el valor de etiquetas del xml original -->
            <xsl:attribute name="empresa">
                <xsl:value-of select="ite/empresa"/>
            </xsl:attribute>
            <xsl:attribute name="telefono">
                <xsl:value-of select="ite/telefono"/>
            </xsl:attribute>
            <!-- Creamos nuevas etiquetas que contienen información de atributos del xml original -->
            <nombre>
                <xsl:value-of select="ite/@nombre"/>
            </nombre>
            <web>
                <xsl:value-of select="ite/@web"/>
            </web>
            <docentes>
                <xsl:for-each select="ite/profesores/profesor">
                    <docente>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id"/>
                        </xsl:attribute>
                        <xsl:attribute name="nombre">
                            <xsl:value-of select="nombre"/>
                        </xsl:attribute>
                    </docente>
                </xsl:for-each>
            </docentes>
            <director>
                <xsl:value-of select="concat(ite/director/nombre,' con el despacho ', ite/director/despacho)"/>
            </director>
            <jefe_estudios>
                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/jefe_estudios/nombre"/>
                </xsl:attribute>
                <xsl:attribute name="despacho">
                    <xsl:value-of select="ite/jefe_estudios/despacho"/>
                </xsl:attribute>
            </jefe_estudios>
            <oferta_formativa>
                <!-- Con un for each, iteramos por cada uno de los nodos de la etiqueta ciclos -->
                <xsl:for-each select="ite/ciclos/ciclo">
                    <ciclo_formativo>
                        <xsl:attribute name="titulo">
                            <xsl:value-of select="nombre"/>
                        </xsl:attribute>
                        <xsl:attribute name="tipo_grado">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                        <xsl:attribute name="año">
                            <xsl:value-of select="decretoTitulo/@año"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@id"/>
                        </xsl:attribute>
                    </ciclo_formativo>
                </xsl:for-each>
            </oferta_formativa>
        </itt>
    </xsl:template>
</xsl:stylesheet>