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
            </tr>
        </thead>
        <tbody>
            <%
                AlunoDAO alunoDao = new AlunoDAO();
                ArrayList<Aluno> alunos = alunoDao.getAlunosProfessor((Professor) session.getAttribute("professor"));
                for (Aluno a : alunos) {
                    out.println("<tr>");
                    out.println("<td>"+a.getCd_aluno()+"</td>");
                    out.println("<td>"+a.getNm_aluno()+"</td>");
                    out.println("</tr>");
                    }%>
        </tbody>
    </table>
</div>
</div>
