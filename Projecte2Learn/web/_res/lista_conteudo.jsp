<%@page import="com.elit2.app.model.Conteudo"%>
<%@page import="com.elit2.app.control.ConteudoDAO"%>
<%@page import="com.elit2.app.model.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.elit2.app.model.Professor"%>
<%@page import="com.elit2.app.control.AlunoDAO"%>
<div class="panel-body">
    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>Nome</th>
                <th>Descrição</th>
                <th colspan="2">Ações</th>
            </tr>
        </thead>
        <tbody>
            <%
                int pag = 1, max = 30;
                ConteudoDAO contDao = new ConteudoDAO();
                ArrayList<Conteudo> conteudos = null;

                if (request.getParameter("search") == null) {
                    if (request.getParameter("professor") != null) {
                        conteudos = contDao.getConteudosProfessor((Professor) session.getAttribute("professor"));
                    } else {
                        conteudos = contDao.getConteudoAluno((Aluno) session.getAttribute("aluno"));
                    }
                } else {
                    if (request.getParameter("professor") != null) {
                        conteudos = contDao.getConteudosProfessor((Professor) session.getAttribute("professor"), request.getParameter("search").toString());
                    } else {
                        conteudos = contDao.getConteudoAluno((Aluno) session.getAttribute("aluno"), request.getParameter("search").toString());
                    }
                    out.println("<ol class='breadcrumb'>");
                    out.println("<span class='glyphicon glyphicon-search'></span>");

                    int de = 0;
                    if (request.getParameter("ver") != null) {
                        int mult = Integer.parseInt(request.getParameter("ver").toString());
                        max = mult * 30;
                    }

                    if (conteudos.size() <= 30) {
                        de = conteudos.size();
                    } else {
                        de = 30;
                        pag = (int) conteudos.size() / max;
                    }

                    out.println("Exibindo <b>" + conteudos.size() + "</b> de <b>" + de + "</b> resultados para <i>" + request.getParameter("search") + "</i>");
                    out.println("</ol>");
                }

                if (conteudos != null) {
                    int cont = 0;
                    for (Conteudo a : conteudos) {
                        out.println("<tr>");
                        out.println("<td>" + a.getCd_conteudo() + "</td>");
                        out.println("<td>" + a.getNm_conteudo() + "</td>");
                        out.println("<td>" + a.getDs_conteudo().substring(0, 30) + "...</td>");
                        out.println("<td><a target='_blank' href='conteudo.jsp?conteudo=" + a.getCd_conteudo() + " '>Ver conteudo</a></td>");
                        out.println("</tr>");
                        cont++;
                        if (cont == max) {
                            break;
                        }
                    }
                } else {
                    out.print("<tr><td colspan='4' style='text-align:center;'>Nenhum conteúdo encontrado</td></tr>");
                }

            %>
        </tbody>
    </table>
</div>
<div class="row">
    <div class="col-md-12 text-center">
        <ul class="pagination">
            <li>
                <a href="#">Anterior</a>
            </li>
            <%for (int i = 0; i < pag; i++) {%>
            <li>
                <a href="dashboard?search=<%=request.getParameter("search")%>&page=alunos&ver=<%=i + 1%>"><%=i + 1%></a>
            </li>
            <%}%>
            <li>
                <a href="#">Próximo</a>
            </li>
        </ul>
    </div>
</div>
