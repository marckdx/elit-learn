<!DOCTYPE html>
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
            <small>Conteúdo</small>
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

            <a class="active btn btn-lg btn-success" style="width: 100%;">Conteúdo</a>
            <a class="btn btn-primary" style="width:100%">Professor</a>
            <a class="btn btn-primary" style="width:100%">Aluno</a>
            <a class="btn btn-primary" style="width:100%">Conteúdo</a>
            <a class="btn btn-primary" style="width:100%">Avaliação</a>
          </div>
        </div>
      </div>
      <div name="princupal" class="col-md-9">
        <!--COMEÇO DO FORME -->
        <form name="form_conteudo" role="form">
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
            <!--CAMPOS DO FORMULÁRIO-->
            <label>Título</label>
            <div>
              <input placeholder="Digite o título do conteúdo" type="text" name="titulo_conteudo" size="80">
              <br>
              <label>Conteúdo</label>
              <br>
              <textarea rows="5" cols="138" maxlength="500" id="conteudo" placeholder="Digite o conteúdo" type="text" name="conteudo"></textarea>
            </div>
            <div class="form-group" <label="anexar">Anexar Arquivo:
              <input type="file">
            </div>
            <br>
            <!--BOTÕES DO FORMULÁRIO-->
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


</body>

</html>