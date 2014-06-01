package com.elit2.app.control;

import com.elit2.app.model.Conteudo;
import com.elit2.app.model.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ConteudoDAO {

    Connection con;
    Statement stmt;
    ResultSet rs;

    public ArrayList<Conteudo> getConteudo(String usuario, String senha) throws Exception {
        String sql = "SELECT * FROM tb_conteudo WHERE nm_email = '" + usuario + "'"
                + " AND nm_senha= '" + senha + "'";

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Conteudo> conteudos = new ArrayList<Conteudo>();
        while (rs.next()) {
            Conteudo conteudo = new Conteudo(rs.getInt("cd_conteudo"), rs.getInt("tbProfessor_cd_professor"), rs.getInt("tbProfessor_cd_cpf_professor"),   
                    rs.getInt("tbImagem_cd_imagem"),
                    rs.getString("nm_conteudo"),
                    rs.getClob("ds_conteudo").toString(),
                    rs.getInt("cd_status"));
            conteudos.add(conteudo);
        }
        con.close();
        stmt.close();
        rs.close();
        return conteudos;
    }

    public int setConteudo(Conteudo conteudo) throws Exception {
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        int result = stmt.executeUpdate("INSERT INTO tb_login VALUES ("+conteudo.getCd_conteudo()+",'"+conteudo.getTbProfessor_cd_professor()+"',"
                + "                      '"+conteudo.getTbProfessor_cd_cpf_professor()+"','"+conteudo.getTbImagem_cd_imagem()+"'"
                + "'"+conteudo.getNm_conteudo()+"', '"+conteudo.getDs_conteudo()+"', '"+conteudo.getCd_status()+"')");
                                    
        return result;
    }
}
