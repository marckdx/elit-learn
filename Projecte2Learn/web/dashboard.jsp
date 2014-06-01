<%-- 
    Document   : login
    Created on : 31/05/2014, 09:32:19
    Author     : Marco Aurélio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("professor") == null && session.getAttribute("aluno") == null) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta charset="utf-8">
        <title>E²-LEARN LOGIN</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="./css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="./js/jquery.min.js"></script>
        <script type="text/javascript" src="./js/bootstrap.min.js"></script>
    </head>

    <body>
        <%@include file="_res/menu.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1 class="text-center text-primary">E²-LEARN
                            <small>Meu dashboard</small>
                        </h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <%@include file="_res/menu_lateral.jsp" %>
                <div class="col-md-10">
                    <div class="col-md-6">
                        <ul class="breadcrumb" style="width: 100%;">
                            Exibindo
                            <b>3</b>&nbsp; atividades de
                            <b>3</b>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <form>
                            <table style="width: 100%;">
                                <tbody>
                                    <tr>
                                        <td style="width: 78%;">
                                            <input class="form-control" style="margin-top: auto;" type="search" placeholder="Digite algo">
                                        </td>
                                        <!--<span class="glyphicon glyphicon-search"></span>-->
                                        <td>&nbsp;&nbsp;
                                            <input class="active btn btn-primary" style="top: 0px; width: 20%; float: right; position: absolute;" type="submit" value="PESQUISAR">
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
                                <th>Atividade</th>
                                <th>Professor</th>
                                <th>Disciplina</th>
                                <th>Terminado</th>
                                <th>Li?</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Globalização</td>
                                <td>Gilberto</td>
                                <td>Geografia</td>
                                <td>Não</td>
                                <td>Não</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Polinômios</td>
                                <td>Gilberto</td>
                                <td>Matemática</td>
                                <td>Não</td>
                                <td>Sim</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Brunno</td>
                                <td>Futebol</td>
                                <td>Ed. Física</td>
                                <td>Sim</td>
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
                            <a href="#">Anterior</a>
                        </li>
                        <li>
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li><li>
                            <a href="#">Próximo</a>
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
