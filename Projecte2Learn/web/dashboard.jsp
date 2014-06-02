<%-- 
    Document   : login
    Created on : 31/05/2014, 09:32:19
    Author     : Marco Aurélio
--%>

<%@page import="com.elit2.app.model.Avaliacao"%>
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
        <title>E²-LEARN DASHBOARD</title>
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
                <%if (session.getAttribute("aluno") != null) {%>
                <div class="col-md-10">
                
                    
                    

                    <%
                        String parametro;
                        if (request.getParameter("page") == null) {
                            parametro = "inicio";
                        } else {
                            parametro = request.getParameter("page").toString();
                        }
                    %>
                    <div style="width: 80%; float: right;">
                        <form style="float: right;" action="dashboard.jsp" method="GET">
                            <input class="form-control" style="margin-top: auto; width:  150px; float: left;" name="search" type="search" placeholder="Digite algo" />
                            &nbsp;<button class="btn btn-primary" type="submit">Pesquisar</button>
                            <input type="hidden" name="page" value="<%=parametro%>"/>
                            <a class="btn btn-success" href="avaliacao.jsp">Avaliações</a>
                            <a class="btn btn-warning" href="conteudo.jsp">Conteúdos</a>
                        </form>
                    </div>

                    <%if (parametro.equals("alunos")) {%>
                    <ul class="nav nav-tabs nav-justified">
                        <li class="active"><a href="dashboard.jsp?page=alunos">Alunos</a></li>
                        <li><a href="dashboard.jsp?page=conteudos">Conteudos</a></li>
                        <li><a href="dashboard.jsp?page=inicio">Avaliações</a></li>
                        <div style="float: right; width: 100%;">
                            <%@include file="_res/lista_alunos.jsp" %>
                        </div>
                    </ul>               
                    <%} else if (parametro.equals("conteudos")) {%>
                    <ul class="nav nav-tabs nav-justified">
                        <li class="active"><a href="dashboard.jsp?page=conteudos">Conteúdos</a></li>
                        <li><a href="dashboard.jsp?page=inicio">Avaliaões</a></li>
                        <div style="float: right; width: 100%;">
                            <%@include file="_res/lista_conteudo.jsp" %>
                        </div>
                    </ul>
                    <%} else {%>
                    <ul class="nav nav-tabs nav-justified">
                        <li class="active"><a href="dashboard.jsp?page=inicio">Avaliações</a></li>
                        <li><a href="dashboard.jsp?page=conteudos">Conteúdos</a></li>

                        <div style="float: right; width: 100%;">
                            <%@include file="_res/lista_avaliacoes.jsp" %>
                        </div>
                    </ul>
                    <%}%>
                </div>
            </div>
            <%} else if (session.getAttribute("professor") != null) {%>
            <%
                String parametro;
                if (request.getParameter("page") == null) {
                    parametro = "inicio";
                } else {
                    parametro = request.getParameter("page").toString();
                }
            %>
            <div style="width: 80%; float: right;">
                <form style="float: right;" action="dashboard.jsp" method="GET">
                    <input class="form-control" style="margin-top: auto; width:  150px; float: left;" name="search" type="search" placeholder="Digite algo" />
                    &nbsp;<button class="btn btn-primary" type="submit">Pesquisar</button>
                    <input type="hidden" name="page" value="<%=parametro%>"/>
                    <a class="btn btn-success" href="avaliacao.jsp">Nova avaliação</a>
                    <a class="btn btn-warning" href="conteudo.jsp">Novo conteúdo</a>
                </form>
            </div>
            <br />
            <br/>
            <div style="width: 85%">
                <%if (parametro.equals("alunos")) {%>
                <ul class="nav nav-tabs nav-justified">
                    <li class="active"><a href="dashboard.jsp?page=alunos">Alunos</a></li>
                    <li><a href="dashboard.jsp?page=conteudos">Conteudos</a></li>
                    <li><a href="dashboard.jsp?page=inicio">Avaliações</a></li>
                    <div style="float: right; width: 82%;">
                        <%@include file="_res/lista_alunos.jsp" %>
                    </div>
                </ul>               
                <%} else if (parametro.equals("conteudos")) {%>
                <ul class="nav nav-tabs nav-justified">
                    <li class="active"><a href="dashboard.jsp?page=conteudos">Conteúdos</a></li>
                    <li><a href="dashboard.jsp?page=inicio">Avaliaões</a></li>
                    <li><a href="dashboard.jsp?page=alunos">Alunos</a></li>
                    <div style="float: right; width: 82%;">
                        <%@include file="_res/lista_conteudo.jsp" %>
                    </div>
                </ul>
                <%} else {%>
                <ul class="nav nav-tabs nav-justified">
                    <li class="active"><a href="dashboard.jsp?page=inicio">Avaliações</a></li>
                    <li><a href="dashboard.jsp?page=alunos">Alunos</a></li>
                    <li><a href="dashboard.jsp?page=conteudos">Conteúdos</a></li>

                    <div style="float: right; width: 82%;">
                        <%@include file="_res/lista_avaliacoes.jsp" %>
                    </div>
                </ul>
                <%}%>
            </div>
            <%}%>

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
