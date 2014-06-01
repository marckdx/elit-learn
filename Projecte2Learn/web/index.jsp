<%-- 
    Document   : index
    Created on : 31/05/2014, 09:32:08
    Author     : Marco Aurélio
--%>
<%@page import="com.elit2.app.model.Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.elit2.app.control.OracleConnector"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>ELIT - LOGIN</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="./css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="./js/jquery.min.js"></script>
        <script type="text/javascript" src="./js/bootstrap.min.js"></script>
    </head>


    <body>
        <%@include  file="_res/menu.jsp" %>
        <%
            if (session.getAttribute("cd_login") != null) {
                response.sendRedirect("dashboard.jsp");
            } else if (request.getParameter("nm_email") != null && request.getParameter("nm_senha") != null) {
                String sql = "SELECT tp_login FROM tb_login WHERE nm_email = '" + request.getParameter("nm_email") + "'"
                        + " AND nm_senha= '" + request.getParameter("nm_senha") + "'";
                //int tp_login = Integer.valueOf(OracleConnector.getQuery(sql).get(1).toString());
                ArrayList<Object[]> obj = OracleConnector.getQuery(sql);
                out.println(obj.size());
                out.println("<div style='position: fixed;'>Valmir</div>");
                //É PROFESSOR
                if (obj.size() > 0) {
                    sql = "SELECT * FROM tb_login WHERE nm_email = '"+request.getParameter("nm_email")+ "' AND"
                            + "tp_login = 0";
                    obj = OracleConnector.getQuery(sql);
                        if (obj.size() >0) {
                                            out.println("Aluno");

                        }else{
                                        out.println("Professor");

                        }
                   /* if ((int)obj.get(0)[0]==1) {
                        out.println("Professor");
                        //É ALUNO
                    } else if ((int)obj.get(0)[0] == 0) {
                        out.println("Aluno");

                        //NÃO ESTÁ CADASTRADO
                    }*/
                } else {
                    response.sendRedirect("index.jsp?action=loginerror");
                }
            }
        %>

        <!-- div da navbar - fim -->
        <div class="container" style="width: 80%;">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li>
                            <a href="#">Library</a>
                        </li>
                        <li>
                            <a href="#">Data</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">

            </div>
            <div id="corpo">
                <div class="row">
                    <div class="col-md-4 text-left">
                        <br>
                        <img src="img/logo.png" class="img-responsive img-rounded">
                    </div>
                    <div class="col-md-4">
                        <p></p>
                    </div>


                    <div class="col-md-4">
                        <form role="form">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input class="form-control" name="nm_email" id="exampleInputEmail1" placeholder="Enter email" type="email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input class="form-control" name="nm_senha" id="exampleInputPassword1" placeholder="Password" type="password">
                            </div>

                            <button type="submit" class="btn btn-primary btn-sm" style="float:right;">ENTRAR</button>
                        </form>
                    </div>

                </div>
                <br>
              
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="img/img_banner.png.jpg">
                                <div class="carousel-caption">
                                    <h2>Title</h2>
                                    <p>Description</p>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

            </div>
            <br>
            <div class="row">
                <div class="col-md-12">

                    <hr>
                </div>
            </div>
        </div>






















































    </body>

</html>