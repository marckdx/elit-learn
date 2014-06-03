<%@page import="com.elit2.app.model.Avaliacao"%>
<%@page import="com.elit2.app.control.AvaliacaoDAO"%>
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

                <% //Criado caso seja aluno uma coluna com o nome do professor aparece
                    if (session.getAttribute("aluno") != null) {%>
                <th>Professor</th>
                    <%}%>
                <th colspan="1">Disciplina</th>
                <th colspan="1">Ações</th>
                    <%//Criado caso seja aluno uma coluna com o nome do professor aparece
                    if (session.getAttribute("aluno") != null) {%>
                <th>Vi?</th>
                    <%}%>
            </tr>
        </thead>
        <tbody>







            <%                int pag = 1, max = 30;
                AvaliacaoDAO avaliDao = new AvaliacaoDAO();
                ArrayList<Avaliacao> avaliacoes = null;

                if (request.getParameter("search") == null) {
                    if (session.getAttribute("professor") != null) {
                        try {
                            avaliacoes = avaliDao.getAvaliacaoProfessor((Professor) session.getAttribute("professor"));
                        } catch (Exception ex) {
                        }
                    } else {
                        try {
                            avaliacoes = avaliDao.getAvaliacaoAluno((Aluno) session.getAttribute("aluno"));
                        } catch (Exception ex) {
                        }
                    }
                } else {
                    if (session.getAttribute("professor") != null) {
                        try {
                            avaliacoes = avaliDao.getAvaliacaoProfessor((Professor) session.getAttribute("professor"), request.getParameter("search").toString());
                        } catch (Exception ex) {
                        }
                    } else {
                        try {
                            avaliacoes = avaliDao.getAvaliacaoAluno((Aluno) session.getAttribute("professor"), request.getParameter("search").toString());
                        } catch (Exception ex) {
                        }

                    }
                    out.println("<ol class='breadcrumb'>");
                    out.println("<span class='glyphicon glyphicon-search'></span>");

                    int de = 0;
                    if (request.getParameter("ver") != null) {
                        int mult = Integer.parseInt(request.getParameter("ver").toString());
                        max = mult * 30;
                    }

                    if (avaliacoes.size() <= 30) {
                        de = avaliacoes.size();
                    } else {
                        de = 30;
                        pag = (int) avaliacoes.size() / max;
                    }

                    out.println("Exibindo <b>" + avaliacoes.size() + "</b> de <b>" + de + "</b> resultados para <i>" + request.getParameter("search") + "</i>");
                    out.println("</ol>");
                }

                /*//
                Criei este if pra isolar o bloco inteiro abaixo
                Testando se é professor ou não de resto não alterei a funcionalidade original                    
                Porémm no if interno onde verifica se existe um array de avaliações nunca é acionado
                sempre cai no Else
                */
                if (session.getAttribute("professor") != null) {
                    if (avaliacoes != null) {
                        int cont = 0;
                        for (Avaliacao a : avaliacoes) {
                            out.println("<tr>");
                            out.println("<td>" + a.getCd_avaliacao() + "</td>");
                            out.println("<td>" + a.getNm_avaliacao() + "</td>");
                            out.println("<td><a target='_blank' href='avaliacao.jsp?avaliacao=" + a.getCd_avaliacao() + " '>Ver avaliação</a></td>");
                            out.println("</tr>");
                            cont++;
                            if (cont == max) {
                                break;
                            }
                        }
                    } else {
                        out.print("<tr><td colspan='4' style='text-align:center;'>Nenhuma avaliação encontrado</td></tr>");
                    }
                } 
                //Aqui é o else do bloco inteiro
                //Caindo aqui ele escreve na tela as acaliações referentes ao aluno
                else {
                    if (avaliacoes != null) {
                        int cont = 0;

                        for (Avaliacao a : avaliacoes) {
                            out.println("<tr>");
                            out.println("<td>" + a.getCd_avaliacao() + "</td>");
                            out.println("<td>" + a.getNm_avaliacao() + "</td>");
                            out.println("<td>" + a.getNm_professor() + "</td>");
                            out.println("<td>" + a.getNm_disciplina() + "</td>");
                            out.println("<td><a target='_blank' href='avaliacao.jsp?avaliacao=" + a.getCd_avaliacao() + " '>Ver avaliação</a></td>");
                            out.println("<td>a</td>");

                            out.println("</tr>");
                            cont++;
                            if (cont == max) {
                                break;
                            }
                        }
                    } else {
                        out.println(avaliacoes.get(0).getNm_disciplina());
                        out.print("<tr><td colspan='5' style='text-align:center;'>Nenhuma avaliação encontrado</td></tr>");
                    }
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
