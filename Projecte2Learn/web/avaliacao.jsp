<%-- 
    Document   : avaliacao
    Created on : 31/05/2014, 20:52:02
    Author     : Marco Aurélio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>ELIT² - AVALIAÇÃO</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class="navbar navbar-default navbar-fixed-top" style="background-color: #0E47B2;">
            <style>
                .body{padding-top:70px}
            </style>
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="#" style="color:white;">
                        <span class="glyphicon glyphicon-list"></span>&nbsp;ELIT²</a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="#" style="color:white;">Home</a>
                        </li>
                        <li>
                            <a href="#" style="color:white;">Contatos</a>
                        </li>
                    </ul>
                    <p class="navbar-text navbar-right" style="color:white;">Bem-vindo, Sérgio Fortuna</p>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1 class="text-center text-primary">E²-LEARN
                            <small>Avaliações</small>
                        </h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title text-center">MENU</h3>
                        </div>
                        <div class="panel-body" style="">
                            <%@include  file="_res/menu_lateral.jsp"%>
                        </div>
                    </div>
                </div>
                <div class="col-md-10">

                    <div class="col-md-6">
                        <form>
                            <table style="width: 100%">
                                <tbody>
                                    <tr>
                                        <td style="width:78%;">
                                            <input type="search" placeholder="Digite aqui" class="form-control" style="margin-top: auto;">
                                        </td>
                                        <!--<span class="glyphicon glyphicon-search"></span>-->
                                        <td>&nbsp;&nbsp;
                                            <input class="active btn btn-primary" value="PESQUISAR" style="float:right; top: 0px; position: absolute; width: 20%;">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>


                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Avaliação</th>
                                <th>Professor</th>
                                <th>Disciplina</th>
                                <th>Concluida</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Globalização</td>
                                <td>Gilberto</td>
                                <td>Geografia</td>
                                <td>Não</td>

                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Polinômios</td>
                                <td>Gilberto</td>
                                <td>Matemática</td>
                                <td>Não</td>

                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Brunno</td>
                                <td>Futebol</td>
                                <td>Ed. Física</td>
                                <td>Sim</td>

                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="pagination">
                        <li>
                            <a href="avaliacao.jsp?page=-1">Anterior</a>
                        </li>
                        <li>
                            <a href="avaliacao.jsp?page=1">1</a>
                        </li>
                        <li>
                            <a href="avaliacao.jsp?page=2">2</a>
                        </li>
                        <li>
                            <a href="avaliacao.jsp?page=+1">Próximo</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <hr>
                </div>

            </div>
            <div class="row">
                <p style="text-align:center; color: #0E47B2;" class="text-info">Todos os direitos reservados ELIT IT c 2014</p>
            </div>
        </div>

























































































    </body>

</html>