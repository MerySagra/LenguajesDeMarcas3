<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="./actividad3.css" />
            </head>
            <body>
                <header>
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
                </header>
                <section>
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
                </section>
                <section>
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
                </section>
                <section>
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
                </section>
                <section>
                    <h4>Formulario de contacto</h4>
                    <form action="" method="POST" enctype="multipart/form-data" target="_blank">
                        <camposet>
                            <legend>Datos de contacto</legend>
                            <label for="nombre_completo">Nombre: </label>
                            <input type="text" name="nombre_completo" id="nombre_completo"/>
                            <label for="apellidos">Apellidos: </label>
                            <input type="text" name="apellidos" id="apellidos"/>
                            <label for="telefono">Teléfono: </label>
                            <input type="text" name="telefono" id="telefono"/>
                            <label for="email">E-mail: </label>
                            <input type="text" name="email" id="email"/>
                        </camposet>
                        <camposet>
                            <legend>Motivo de consulta</legend>
                            <label for="motivo_consulta">Especifique el motivo de su consulta:</label>
                            <select name="motivo_consulta" id="motivo_consulta">
                                <option value="">Elige una opción:</option>
                                <option value="matricula">Reservar plaza</option>
                                <option value="informacion">Pedir información</option>
                                <option value="otra">Otra consulta</option>
                            </select>
                        </camposet>
                        <camposet>
                            <legend>Ciclo de interés</legend>
                            <xsl:for-each select="ite/ciclos/ciclo">
                                <input type="radio" id="{ite/ciclos/ciclo/@id}" name="ite/ciclos/ciclo/@id" value="ite/ciclos/ciclo/@id"/>
                                <label for="ite/ciclos/ciclo/@id"><xsl:value-of select="nombre" /></label>
                            </xsl:for-each>
                        </camposet>
                        <button type="reset">Eliminar</button>
                        <button type="submit">Aceptar</button>
                    </form>
                </section>
            </body>
            <footer>
                <h5>Author</h5>
                <h5>Author</h5>
                <h5>Author</h5>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>