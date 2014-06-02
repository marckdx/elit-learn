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
                <th colspan="2" style="text-align: center;">Ações</th>
            </tr>
        </thead>
        <tbody>
            <%
                int pag = 1, max = 30;
                AlunoDAO alunoDao = new AlunoDAO();
                ArrayList<Aluno> alunos = null;
               

                if (request.getParameter("search") == null) {
                    try {
                        alunos = alunoDao.getAlunosProfessor((Professor) session.getAttribute("professor"));
                    } catch (Exception ex) {
                    }
                } else {
                    try {
                        alunos = alunoDao.getAlunosProfessor((Professor) session.getAttribute("professor"), request.getParameter("search").toString());
                    } catch (Exception ex) {
                    }
                    out.println("<ol class='breadcrumb'>");
                    out.println("<span class='glyphicon glyphicon-search'></span>");

                    int de = 0;
                    if (request.getParameter("ver") != null) {
                        int mult = Integer.parseInt(request.getParameter("ver").toString());
                        max = mult * 30;
                    }

                    if (alunos.size() <= 30) {
                        de = alunos.size();
                    } else {
                        de = 30;
                        pag = (int) alunos.size() / max;
                    }

                    out.println("Exibindo <b>" + alunos.size() + "</b> de <b>" + de + "</b> resultados para <i>" + request.getParameter("search") + "</i>");
                    out.println("</ol>");
                }

                if (alunos != null) {
                    int cont = 0;
                    for (Aluno a : alunos) {
                        out.println("<tr>");
                        out.println("<td>" + a.getCd_aluno() + "</td>");
                        out.println("<td>" + a.getNm_aluno() + "</td>");
                        out.println("<td><a target='_blank' href='avaliacao.jsp?aluno=" + a.getCd_aluno() + " '>Ver avaliações</a></td>");
                        out.println("<td><a target='_blank' href='conteudo.jsp?aluno=" + a.getCd_aluno() + " '>Ver vizualizações</a></td>");
                        out.println("</tr>");
                        cont++;
                        if (cont == max) {
                            break;
                        }
                    }
                } else {
                    out.print("<tr><td colspan='4' style='text-align:center;'>Nenhum aluno encontrado</td></tr>");
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
