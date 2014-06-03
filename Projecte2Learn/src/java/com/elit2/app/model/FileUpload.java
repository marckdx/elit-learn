/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.model;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import org.apache.commons.fileupload.FileItemStream;

/**
 *
 * @author Ivan Aurélio
 */
public class FileUpload {

    public static boolean proccessFile(String path, FileItemStream item) {
        try {
            File f = new File(path + File.separator + "images");
            if (!f.exists()) {
                f.mkdir();
            }
            File savedFile = new File(f.getAbsolutePath() + File.separator + item.getName());
            FileOutputStream fos = new FileOutputStream(savedFile);
            InputStream is = item.openStream();

            int x = 0;
            byte[] b = new byte[1024];
            while ((x = is.read()) != -1) {
                fos.write(b, 0, x);
            }
            fos.flush();
            fos.close();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
