<%-- 
    Document   : session
    Created on : 31/05/2014, 21:53:23
    Author     : Jhonatan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    public class session{
             
        public criarSessao(){ 
                session.setAttribute("login", request.getParameter("nm_email"));            
                session.setAttribute("senha", request.getParameter("cd_senha")); 
        }

        public destruirSessao(){
                session.removeAttribute("login");
                session.removeAttribute("senha");
        }
			
        public  skipLogin(){
                if session(pStrSessionName) != true {
                        response.sendredirect("../index.jsp");	 
                }
        }
}
%>