
package com.elit2.app.control;


import com.elit2.app.model.Login;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class LoginDAO {
    
    Connection con;
    Statement stmt;
    ResultSet rs;

    public ArrayList<Login> getLogin(String usuario, String senha) throws Exception {
        String sql = "SELECT * FROM tb_login WHERE nm_email = '" + usuario + "'"
                + " AND nm_senha= '" + senha + "'";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Login> logins = new ArrayList<Login>();
        while (rs.next()) {
           Login login = new Login(rs.getInt("cd_login"), rs.getString("nm_email"), rs.getString("nm_senha"),rs.getString("tp_login"));
           logins.add(login);
        }
        con.close();
        stmt.close();
        rs.close();
        return logins;
    }
    
    public int setLogin(Login login) throws Exception{
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        int result = stmt.executeUpdate("INSERT INTO tb_login VALUES ("+login.getCd_login()+",'"+login.getNm_email()+"','"+login.getNm_senha()+"','"+login.getTp_login()+"')");
        return result;
    }
}
