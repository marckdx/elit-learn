/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Marco Aurélio
 */
public class OracleConnector {

    private static final String servername = "201.68.234.137";
    private static final String login = "hr";
    private static final String senha = "hr";

    /**
     * Método que retorna uma conexão com o banco de dados
     *
     * @return java.sql.Connection
     * @throws SQLException
     */
    public static Connection getConnection() throws Exception {
        Class.forName("oracle.jdbc.OracleDriver");
        String url = "jdbc:oracle:thin:@" + servername + ":1521:XE";
        return DriverManager.getConnection(url, login, senha);
        
    }

    /**
     * Método que executa uma inserção, deleção ou atualização no banco de dados
     * @param sql
     * @return
     * @throws Exception
     */
    public static int executeStatement(String sql) throws Exception {
        Exception e = null;
        int result = 0;

        Connection con = null;
        Statement stmt = null;

        try {
            con = getConnection();
            stmt = con.createStatement();
            result = stmt.executeUpdate(sql);
        } catch (Exception ex) {
            e = ex;
        } finally {
            try {
                stmt.close();
            } catch (Exception ex2) {
            }
            try {
                con.close();
            } catch (Exception ex2) {
            }
        }
        if (e != null) {
            throw e;
        }
        return result;
    }

    public static ArrayList<Object[]> getQuery(String sql) throws Exception {
        Exception e = null;
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        ArrayList<Object[]> result = null;
        try {
            con = getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            result = new ArrayList<Object[]>();
            while (rs.next()) {
                Object[] reg = new Object[rs.getMetaData().getColumnCount()];
                for (int i = 0; i < rs.getMetaData().getColumnCount(); i++) {
                    reg[i] = rs.getObject(i + 1);
                }
                result.add(reg);
            }
        } catch (Exception ex) {
            e = ex;
        } finally {
            try {
                rs.close();
            } catch (Exception ex2) {
            }
            try {
                stmt.close();
            } catch (Exception ex2) {
            }
            try {
                con.close();
            } catch (Exception ex2) {
            }
        }

        if (e != null) {
            throw e;
        }
        return result;
    }
}
