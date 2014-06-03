<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Hashtable"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>Cadastro de Conteúdo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    </head>

    <body>
        <%
            
        %>



        <%@include file="_res/menu.jsp"%>
        <br>
        <br>
        <br>
        <%if (session.getAttribute("professor") != null) {%>        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1 class="text-center text-primary"><img src='img/emblem_library.png' style="width: 64px; height: 64px;">&nbsp;E²-LEARN
                            <small>Cadastro de Conteúdo</small>
                        </h1>
                    </div>
                </div>
            </div>
            <%@include file="_res/menu_lateral.jsp"%>
            <div name="princupal" class="col-md-9">
                <!--COMEÃ‡O DO FORME -->
                <form name="form_conteudo" method="post" role="form" enctype="multipart/form-data">
                    <!--CARROSSEL DE IMAGENS -->
                    <div id="carrossel" class="carousel slide" data-ride="carousel" data-interval="0">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="http://placehold.it/1920x200">
                                <div class="carousel-caption">

                                    <h2 draggable="true">Conteúdo</h2>
                                    <p></p>
                                </div>
                            </div>
                        </div>

                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>

                    <div class="form-group">
                        <br>
                        <!--CAMPOS DO FORMULÃRIO-->
                        <label>Título</label>
                        <div>
                            <input type="text" required="true" class="form-control" placeholder="Digite o título do conteúdo" type="text" name="titulo_conteudo" size="80">
                            <br>
                            <label>Conteúdo</label>
                            <br>
                            <textarea type="text" required="true" class="form-control" rows="5" cols="138" maxlength="500" id="conteudo" placeholder="Digite o conteúdo" type="text" name="conteudo"></textarea>
                        </div>
                        <div class="form-group">
                            <label id="anexar">Anexar Arquivo:
                                <input type="file" name="img">
                                </div>
                                <br>
                                <!--BOTÃ•ES DO FORMULÃRIO-->
                                <button type="submit" class="btn btn-default">Enviar</button>
                                <button type="reset" class="btn btn-default">Apagar</button>
                                <button type="cancel" class="btn btn-default">Cancelar</button>
                        </div>

                </form>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <hr>
                </div>

            </div>
            <div name="rodape " class="row" draggable="true">
                <p style="text-align:center; color: #0E47B2;" class="text-info">Todos os direitos reservados ELIT IT c 2014</p>
            </div>
        </div>
    </div>

    <%}%>








</body>

</html>