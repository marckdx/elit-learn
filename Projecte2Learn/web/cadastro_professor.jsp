<%@page import="com.elit2.app.model.Login"%>
<%@page import="com.elit2.app.control.LoginDAO"%>
<%@page import="com.elit2.app.control.ProfessorDAO"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Cadastro Professor</title>
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
         <%@include file="_res/menu.jsp" %>
         
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
            <small>Cadastro do Professor</small>
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

            <a class="btn btn-primary" style="width: 100%;">Dashboard</a>
            <a class="btn btn-primary" style="width:100%">Escola</a>
            <a class="btn btn-primary" style="width:100%">Disciplinas</a>
            <a class="btn btn-primary" style="width:100%">Conteúdos</a>
            <a class="active btn btn-lg btn-success" style="width:100%">Avaliações</a>
          </div>
        </div>
      </div>
      <div>

        <form name="cadastro_professor" method="post" role="form">
          <div class="col-md-10">
            <br>

            <table>
              <tbody>
                <tr>
                  <td>
                    <label>Nome:
                      <label></label>
                    </label>
                  </td>
                  <td>
                    <input id="nome_professor" name ="nome_professor" placeholder="Digite seu nome completo" type="text" size="50" required>
                  </td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td style="color:white">.</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>


                <tr>
                  <td>
                    <label>CPF:
                      <label></label>
                    </label>
                  </td>
                  <td>
                    <input id="cpf_professor" name="cpf_professor"placeholder="Digite seu CPF" type="text" size="15" required>
                  </td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td style="color:white">.</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td>
                    <label>E-mail</label>
                  </td>
                  <td>
                    <input id="email_professor" name="email_professor" placeholder="Digite seu e-mail" type="text" size="50" required>
                  </td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td style="color:white">.</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td>
                    <label>Senha:</label>
                  </td>
                  <td>
                    <input id="senha_professor" name="senha_professor" placeholder="Digite uma senha" type="password" size="14" required>
                  </td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td style="color:white">.</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td>
                    <label>Instituição:</label>
                  </td>
                  <td>

                    <select name="select_instituicao_professor" required>
                      <option required></option>
                      <option value="Fatec - PG" required>Fatec - P.G.</option>
                      <option value="Fatec - PG" required>Fatec - S.V.</option>
                      <option value="Fatec - PG" required>Fatec - S.P.</option>
                    </select>
                  </td>

                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td style="color:white">.</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td>
                    <label>Curso:</label>
                  </td>
                  <td>

                    <select name="select_curso" required>
                      <option ></option>
                      <option value="ADS">ADS</option>
                      <option value="quimica">Quimica</option>
                      <option value="gestao">Gestao</option>
                    </select>
                  </td>

                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td style="color:white">.</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td>
                    <label>Disciplina:</label>
                  </td>
                  <td>
                    <input type="checkbox" name="ck_matematica" value="matematica">Matematica -
                    <input type="checkbox" name="ck_quimica" value="quimica">Quimica Geral -
                    <input type="checkbox" name="ck_portugues" value="potugues">Portugues -
                    <input type="checkbox" name="ck_geografia" value="geografia">Geografia
                  </td>

                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td style="color:white">.</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td colspan="4">
                    <button type="submit" class="btn btn-default">Enviar</button>
                    <button type="reset" class="btn btn-default"> Apagar</button>
                    <button type="cancel" class="btn btn-default">Cancelar</button>                 
                  </td>
                <%
                   String nome_professor = request.getParameter("nome_professor"); 
                   String cpf_professor =   request.getParameter("cpf_professor"); 
                   String email_professor = request.getParameter("email_professor");
                   String senha_professor = request.getParameter("senha_professor");
                                  
                   ProfessorDAO professordao = new ProfessorDAO();
                   LoginDAO logindao = new LoginDAO();
                   Login log = new Login(logindao.getLoginCount(),"email_professor", "senha_professor", 1) ;
                   professordao.setProfessor(nome_professor, cpf_professor,1);                  
                %>  
                  
                  
                  
                  <td></td>
                </tr>
              </tbody>
            </table>

          </div>
        </form>
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
              <a href="#">Proximo</a>
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


  </div>



</body>

</html>