<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="./actividad3.css" />
                <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
                <link rel="preconnect" href="https://fonts.gstatic.com"/>
                <link href="https://fonts.googleapis.com/css2?family=Londrina+Solid:wght@100;300;400;900&amp;display" rel="stylesheet"/>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/parallax/3.1.0/parallax.min.js"></script>
            </head>
            <body>
                <div id="scene">
                    <div data-depth="0.2">
                        <img class="back-paralax" src="./public/backgrounds/backgroundback.jpg"/>
                    </div>
                    <div data-depth="0.6">
                        <img src="./public/backgrounds/frontbackground.png" class="front-paralax"/>
                    </div>
                </div>
                <div class="content">
                    <header class="header">
                        <div class="edix-presentation">
                            <img src="./public/logos/edix-formacion.png" class="logo" alt="" srcset=""/>
                            <div class="empresa">
                                <a href="{ite/@web}" target="_blank">
                                    <xsl:value-of select="ite/@nombre" />
                                </a>
                            </div>
                        </div>
                        <div class="title-header">
                            <h1 class="title">Enseñamos tecnología que da miedo</h1>
                        </div>
                        <div class="contacto">
                            <div class="group">
                                <img src="./public/logos/logo_proeduca.png" class="logo group"/>
                                Grupo <a href="https://www.grupoproeduca.com/" target="_blank"><xsl:value-of select="ite/empresa" /></a>
                            </div>
                            <div class="phone">
                                <span class="material-icons">
                                    contact_support
                                </span>
                                <span class="numero_telefono">
                                    <xsl:value-of select="ite/telefono" />
                                </span>
                            </div>
                        </div>
                    </header>
                    <section class="section teachers">
                        <div class="section-title">
                            <h1>Profesores que son unos monstruos</h1>
                        </div>
                        <div class="section-data">
                            <div class="table">
                                <span>Id del profesor</span>
                                <span>Nombre</span>
                                <xsl:for-each select="ite/profesores/profesor">
                                    <span>
                                        <xsl:value-of select="id" />
                                    </span>
                                    <span>
                                        <xsl:value-of select="nombre" />
                                    </span>
                                </xsl:for-each>
                            </div>
                        </div>
                    </section>
                    <section class="section direction">
                        <div class="section-header">
                            <h1>Una dirección digna del Rey de los Infiernos</h1>
                        </div>
                        <div class="section-data">
                            <div class="table">
                                <span>Cargo</span>
                                <span>Nombre</span>
                                <span>Despacho</span>
                                <span>Director</span>
                                <span><xsl:value-of select="ite/director/nombre" /></span>
                                <span><xsl:value-of select="ite/director/despacho" /></span>
                                <span>Jefe de estudios</span>
                                <span><xsl:value-of select="ite/jefe_estudios/nombre" /></span>
                                <span><xsl:value-of select="ite/jefe_estudios/despacho" /></span>
                            </div>
                        </div>
                    </section>
                    <section class="section studies">
                        <div class="section-header">
                            <h1>Una formación que ni el mismo Van Helsing</h1>
                        </div>
                        <div class="section-data">
                            <div class="table">
                                <span>Id del ciclo</span>
                                <span>Nombre del ciclo</span>
                                <span>Tipo de grado</span>
                                <span>Año del decreto</span>
                                <xsl:for-each select="ite/ciclos/ciclo">
                                    <span><xsl:value-of select="@id" /></span>
                                    <span><xsl:value-of select="nombre" /></span>
                                    <span><xsl:value-of select="grado" /></span>
                                    <span><xsl:value-of select="decretoTitulo/@año" /></span>
                                </xsl:for-each>
                            </div>
                        </div>
                    </section>
                    <section class="section form-contact">
                        <div class="section-header">
                            <h1>Puedes pedir que te llamemos... si te atreves</h1>
                        </div>
                        <form action="" method="POST" enctype="multipart/form-data" target="_blank" class="set-fields">
                            <camposet class="fields">
                                <legend class="fields-title">Datos de contacto</legend>
                                <label for="nombre_completo" class="field-title">Nombre: </label>
                                <input type="text" name="nombre_completo" id="nombre_completo" class="field"/>
                                <label for="apellidos" class="field-title">Apellidos: </label>
                                <input type="text" name="apellidos" id="apellidos" class="field"/>
                                <label for="telefono" class="field-title">Teléfono: </label>
                                <input type="text" name="telefono" id="telefono" class="field"/>
                                <label for="email" class="field-title">E-mail: </label>
                                <input type="text" name="email" id="email" class="field"/>
                            </camposet>
                            <camposet class="fields">
                                <legend class="fields-title">Motivo de consulta</legend>
                                <label for="motivo_consulta" class="field-title">Especifique el motivo de su consulta:</label>
                                <select name="motivo_consulta" id="motivo_consulta" class="field menu">
                                    <option value="">Elige una opción:</option>
                                    <option value="matricula">Reservar plaza</option>
                                    <option value="informacion">Pedir información</option>
                                    <option value="otra">Otra consulta</option>
                                </select>
                            </camposet>
                            <camposet class="fields">
                                <legend class="fields-title">Ciclo de interés</legend>
                                <div class="options table">
                                    <xsl:for-each select="ite/ciclos/ciclo">
                                        <div class="option-title">
                                            <input type="radio" id="{ite/ciclos/ciclo/@id}" name="ite/ciclos/ciclo/@id" value="ite/ciclos/ciclo/@id" class="option"/>
                                            <label for="ite/ciclos/ciclo/@id" class="field-title"><xsl:value-of select="nombre" /></label>
                                        </div>
                                    </xsl:for-each>
                                </div>
                            </camposet>
                            <div class="buttons">
                                <button type="reset" class="btn secondary">Eliminar</button>
                                <button type="submit" class="btn primary">Aceptar</button>
                            </div>
                        </form>
                    </section>
                    <footer class="footer section">
                        <div class="authors">
                            <h5 class="author">Jose Antonio Guardiola</h5>
                            <h5 class="author">María Jesús Sagra Montero</h5>
                            <h5 class="author">Silvia Arnáiz García</h5>
                        </div>
                    </footer>
                </div>
                <script>
                    (function start(){
                        var scene = document.getElementById('scene');
                        var parallaxInstance = new Parallax(scene);
                    })()
                </script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>