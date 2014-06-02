<%@page import="com.elit2.app.model.Login"%>
<%@page import="com.elit2.app.control.LoginDAO"%>
<%@page import="com.elit2.app.control.AlunoDAO"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Cadastro Aluno</title>
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
          <span class="glyphicon glyphicon-list"></span>&nbsp;ELIT�</a>
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
          <h1 class="text-center text-primary">E�-LEARN
            <small>Cadastro do Aluno</small>
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
            <a class="btn btn-primary" style="width:100%">Conte�dos</a>
            <a class="active btn btn-lg btn-success" style="width:100%">Avalia��es</a>
          </div>
        </div>
      </div>
      <div>

        <form name="cadastro_aluno" method="post" role="form">
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
                    <input id="nome_professor" name ="nome_aluno" placeholder="Digite seu nome completo" type="text" size="50" required>
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
                    <input id="email_professor" name="email_aluno" placeholder="Digite seu e-mail" type="text" size="50" required>
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
                    <input id="senha_professor" name="senha_aluno" placeholder="Digite uma senha" type="password" size="14" required>
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
                    <label>Institui��o:</label>
                  </td>
                  <td>

                    <select name="select_instituicao_aluno" required>
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
                    <label>Per�odo:</label>
                  </td>
                  <td>

                    <select name="select_periodo">
                      <option value="manha">Manh�</option>
                      <option value="tarde">Tarde</option>
                      <option value="noite">Noite</option>
                    </select>
                  </td>

                  <td></td>
                  <td></td>
                  <td></td>
                </tr>

                <tr>
                  <td style="color:white" ;="">.</td>
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
                    <label>Turma:</label>
                  </td>
                  <td>

                    <select name="select_turma">
                      <option value="1ano">1� Ano</option>
                      <option value="2ano">2� Ano</option>
                      <option value="3ano">3� Ano</option>
                    </select>
                  </td>

                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td style="color:white" ;="">.</td>
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