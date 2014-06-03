<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (isMultipart) {
            ServletFileUpload upload = new ServletFileUpload();
            try {
                FileItemIterator itr = upload.getItemIterator(request);
                while (itr.hasNext()) {
                    FileItemStream item = itr.next();
                    if (item.isFormField()) {
                        String fieldName=item.getFieldName();
                        InputStream is = item.openStream();
                        byte[] b = new byte[is.available()];
                        is.read(b);
                        String value = new String(b);
                        response.getWriter().println(fieldName+":"+value+"<br/>");
                    } else {
                        String path = getServletContext().getRealPath("/");
                        if (com.elit2.app.model.FileUpload.proccessFile(path, item)) {
                            response.getWriter().print("Deu certo");
                        } else {
                            response.getWriter().print("Deu errado");
                        }
                    }
                }
            } catch (Exception ex) {
                response.sendRedirect("erro.jsp?error="+ex.getMessage());
            }
        }

%>
