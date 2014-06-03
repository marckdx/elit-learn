/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Ivan Aurélio
 */
public class FileUpload extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
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
                    } else {
                        String path = getServletContext().getRealPath("/");
                        if (com.elit2.app.model.FileUpload.proccessFile(path, item)) {
                            response.getWriter().print("Deu certo");
                        } else {
                            response.getWriter().print("Deu errado");
                        }
                    }
                }
            } catch (FileUploadException ex) {
                ex.printStackTrace();
            }
        }
    }
}
