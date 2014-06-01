<%@page import="com.elit2.app.model.Aluno"%>
<%@page import="com.elit2.app.model.Professor"%>
<% String nomeusuario = "";

    if (session.getAttribute("professor") != null) {
        nomeusuario = "Prof.: " + ((Professor) session.getAttribute("professor")).getNm_professor();
    } else if (session.getAttribute("aluno") != null) {
        nomeusuario = "Al.: " + ((Aluno) session.getAttribute("aluno")).getNm_aluno();
    } else {
        nomeusuario = "Olá visitante";
    }

%>
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
            <%if (session.getAttribute("professor") != null || session.getAttribute("aluno") != null) {%>
            <a type="button" class="btn btn-danger btn-sm navbar-btn navbar-right" href="./sair.jsp" style="float:right;">Sair</a>&nbsp;&nbsp;&nbsp;
            <%}%>
            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="index.jsp" style="color:white;">Home</a>
                </li>
                <li>
                    <a href="sobre.jsp" style="color:white;">Sobre</a>
                </li>

            </ul>

            <p class="navbar-text navbar-right" style="color:white;"><%out.println(nomeusuario);%></p>
        </div>
    </div>
</div>
<br>
<br>
<br>
