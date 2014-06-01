<%-- 
    Document   : dashboard_professor_parte1
    Created on : 01/06/2014, 13:47:14
    Author     : Jhonatan
--%>
<%@page import="com.elit2.app.control.AlunoDAO"%>
<%@page import="com.elit2.app.control.ProfessorDAO"%>
<%@page import="com.elit2.app.model.Professor"%>
<%@page import="com.elit2.app.control.LoginDAO"%>
<%@page import="com.elit2.app.model.Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.elit2.app.control.OracleConnector"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("professor") != null || session.getAttribute("aluno") != null) {
        response.sendRedirect("dashboard.jsp?action=redirect");
    }
%>
<html>

<head>
  <meta charset="utf-8">
  <title>Bootstrap, from Twitter</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>

<body>
  <div class="container"></div>
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
            <small>Minha página</small>
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
          <div class="panel-body" style="width:100%;">
            <a href ="index.jsp" class="active btn btn-lg btn-success"style="width: 100%;">Inicio</a>
            <a href ="dashboard_professor_parte1" class="btn btn-primary" style="width:100%">Disciplinas</a>
            <a href="conteudo.jsp"   class="btn btn-primary" style="width:100%">Conteúdos</a>
            <a href="avaliacao.jsp" class="btn btn-primary" style="width:100%">Avaliações</a>
          </div>
        </div>
      </div>
      <div class="col-md-9">
        <ul class="nav nav-pills">
          <li class="active">
            <a href="#">Alunos</a>
          </li>
          <li>
            <a href="dashboard_professor_parte2.jsp">Tarefas realizadas</a>
          </li>

        </ul>
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Lista de Alunos</h3>
          </div>
          <div class="panel-body">
            <table class="table">
              <thead>
                <tr>
                  <th>Código</th>
                  <th>Nome</th>
                  <th>Turma</th>
                  <th>Login</th>
                  <th>Nível</th>
                  <th>Curso</th>

                </tr>
              </thead>
              <tbody>
                <%
                    AlunoDAO
                
                %>
              </tbody>
            </table>
          </div>
        </div>

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
          </li>



          <li>
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
