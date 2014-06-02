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
                AlunoDAO alunoDao = new AlunoDAO();
                ArrayList<Aluno> alunos = null;
                
                
                               
                if (request.getParameter("search") == null) {
                    alunos = alunoDao.getAlunosProfessor((Professor) session.getAttribute("professor"));
                } else {
                    try{
                    alunos = alunoDao.getAlunosProfessor((Professor) session.getAttribute("Professor"), request.getParameter("search").toString());
                    }catch(Exception ex){
                     
                    }
                    out.println("<ol class='breadcrumb'>");
                    out.println("<span class='glyphicon glyphicon-search'></span>");
                    out.println("Exibindo <b>"+1+"</b> resultados para <i>"+request.getParameter("search")+"</i>");
                    out.println("</ol>");
                }

                if (alunos != null) {
                    for (Aluno a : alunos) {
                        out.println("<tr>");
                        out.println("<td>" + a.getCd_aluno() + "</td>");
                        out.println("<td>" + a.getNm_aluno() + "</td>");
                        out.println("<td><a target='_blank' href='avaliacao.jsp?aluno="+a.getCd_aluno()+" '>Ver avaliações</a></td>");
                        out.println("<td><a target='_blank' href='conteudo.jsp?aluno="+a.getCd_aluno()+" '>Ver vizualizações</a></td>");
                        out.println("</tr>");
                    }
                }else{
                    out.print("<tr><td colspan='4' style='text-align:center;'>Nenhum aluno encontrado</td></tr>");
                }
            
            %>
        </tbody>
    </table>
</div>
</div>
