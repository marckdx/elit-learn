<%-- 
    Document   : avaliacao
    Created on : 31/05/2014, 20:52:02
    Author     : Marco Aurélio
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.elit2.app.control.AvaliacaoDAO" %>
<%@page import="com.elit2.app.model.Avaliacao" %>
<%@page import="com.elit2.app.model.Professor" %>
<%@page import="com.elit2.app.model.Aluno" %>

<%
    Aluno aluno = (Aluno) session.getAttribute("aluno");
    AvaliacaoDAO avaliacaodao = new AvaliacaoDAO();
    //request.getSession().setAttribute("professor", new Professor(1, "marco@live.com", 1, 1));
  /*  if (session.getAttribute("professor") == null && session.getAttribute("aluno") == null) {
        response.sendRedirect("index.jsp");
    } else if (session.getAttribute("professor") != null) {
        response.sendRedirect("index.jsp");
    }*/
%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>ELIT² - AVALIAÇÃO</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="./css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="./js/jquery.min.js"></script>
        <script type="text/javascript" src="./js/bootstrap.min.js"></script>
    </head>

    <body>
        <%@include file="./_res/menu.jsp" %>
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
                <%@include file="./_res/menu_lateral.jsp" %>
                <div class="col-md-10">

                    <div class="col-md-6">
                        <form method="get" action="">
                            <table style="width: 100%">
                                <tbody>
                                    <tr>
                                        <td style="width:78%;">
                                            <input type="search" placeholder="Digite aqui" class="form-control" style="margin-top: auto;">
                                        </td>
                                        <!--<span class="glyphicon glyphicon-search"></span>-->
                                        <td>&nbsp;&nbsp;
                                            <input class="active btn btn-primary" name="pesquisar" value="PESQUISAR" style="float:right; top: 0px; position: absolute; width: 20%;">
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
                            <%
                                if (request.getParameter("pesquisa") != null) {
                                    ArrayList<Avaliacao> avaliacoes = avaliacaodao.getAvaliacaoAluno(aluno);
                                    int contador = 0;
                                    for (Avaliacao valor : avaliacoes) {
                                        contador++;
                            %>
                            <tr>
                                <td><%=contador%></td>
                                <td><%=valor.getNm_avaliacao()%></td>
                                <td><%=valor.getNm_professor()%></td>
                                <td><%=valor.getNm_disciplina()%></td>
                                <td><%if (valor.isIc_status() == true) {
                                        out.print("Sim");
                                    } else {
                                        out.print("Não");
                                    }%></td>
                            </tr>
                            <%
    //  valor.
                                }

                            %>
                        </tbody>

                        <%                                } else {

                            }
                        %>               

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