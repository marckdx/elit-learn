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

    public ArrayList<Conteudo> getConteudo() throws Exception {
        String sql = "SELECT * FROM tb_cont";

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Conteudo> conteudos = new ArrayList<Conteudo>();
        while (rs.next()) {
            Conteudo conteudo = new Conteudo(rs.getInt("cd_cont"), rs.getInt("tbProfessor_cd_professor"), rs.getInt("tbProfessor_cd_cpf_professor"),   
                    rs.getInt("tbImagem_cd_imagem"),
                    rs.getString("nm_cont"),
                    rs.getClob("ds_cont").toString(),
                    rs.getInt("cd_status"));
            conteudos.add(conteudo);
        }
        con.close();
        stmt.close();
        rs.close();
        return conteudos;
    }

    public void setConteudo(Conteudo conteudo) throws Exception {
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        stmt.executeUpdate("INSERT INTO tb_login VALUES ("+conteudo.getCd_conteudo()+",'"+conteudo.getTbProfessor_cd_professor()+"',"
                + "                      '"+conteudo.getTbProfessor_cd_cpf_professor()+"','"+conteudo.getTbImagem_cd_imagem()+"'"
                + "'"+conteudo.getNm_conteudo()+"', '"+conteudo.getDs_conteudo()+"', '"+conteudo.getCd_status()+"')");
                                   
    }
}
