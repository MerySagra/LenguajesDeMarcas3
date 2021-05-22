<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="./actividad3.css" />
            </head>
            <body>
                <h1>
                    <a href="{ite/@web}" target="_blank">
                        <xsl:value-of select="ite/@nombre" />
                    </a>
                </h1>
                <h2>
                    <p>
                        Grupo <a href="https://www.grupoproeduca.com/" target="_blank"><xsl:value-of select="ite/empresa" /></a>
                    </p>
                </h2>
                <h3>
                    <p>
                        Teléfono:
                        <xsl:value-of select="ite/telefono" />
                    </p>
                </h3>
                <h4>Profesorado</h4>
                    <table>
                        <tr>
                            <th>Id del profesor</th>
                            <th>Nombre</th>
                        </tr>
                        <xsl:for-each select="ite/profesores/profesor">
                            <tr>
                                <td>
                                    <xsl:value-of select="id" />
                                </td>
                                <td>
                                    <xsl:value-of select="nombre" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <h4>Equipo directivo</h4>
                    <ul>
                        <li>
                            Director
                        </li>
                        <ul>
                            <li><xsl:value-of select="ite/director/nombre" /></li>
                            <li><xsl:value-of select="ite/director/despacho" /></li>
                        </ul>
                        <li>
                            Jefe de estudios
                        </li>
                        <ul>
                            <li><xsl:value-of select="ite/jefe_estudios/nombre" /></li>
                            <li><xsl:value-of select="ite/jefe_estudios/despacho" /></li>
                        </ul>
                    </ul>
                    <h4>Oferta formativa</h4>
                    <table>
                        <tr>
                            <th>Id del ciclo</th>
                            <th>Nombre del ciclo</th>
                            <th>Tipo de grado</th>
                            <th>Año del decreto</th>
                        </tr>
                        <xsl:for-each select="ite/ciclos/ciclo">
                            <tr>
                                <td>
                                    <xsl:value-of select="@id" />
                                </td>
                                <td>
                                    <xsl:value-of select="nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="grado" />
                                </td>
                                <td>
                                    <xsl:value-of select="decretoTitulo/@año" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> <!-- Mediante XSLT y XPATH, crear una página web en HTML y CSS 
            en la que se plasme toda la información del XML. 
            Dicha página web debe contener al menos los siguientes requisitos:

Al menos dos tabla
Al menos dos enlaces
Al menos una lista ordenada o no ordenada
Al menos un formulario de contacto 
https://www.w3schools.com/xml/xsl_for_each.asp
-->
