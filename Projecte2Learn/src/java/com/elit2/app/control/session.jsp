<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    public class session{
        
        public setSessao(String pNomeSessao, String pInput){ 
               session.setAttribute(pNomeSessao, request.getParameter(pInput));            
        }
        
        public String getSessao(){ 
            String sessao = session.getAttribute(pNomeSessao, request.getParameter(pInput));
            return sessao;
        }

        public destruirSessao(pNomeSessao){
                session.removeAttribute(pNomeSessao);
        }
			
        public  skipLogin(){
                if (session(pNomeSessao) != true) {
                        response.sendredirect("../index.jsp");	 
                }
        }
}
%>