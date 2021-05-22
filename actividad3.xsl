<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="./actividad3.css" />
            </head>
            <body>
                <h1>
                    <p>
                        Datos de
                        <xsl:value-of select="ite/empresa" />
                    </p>
                </h1>
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
