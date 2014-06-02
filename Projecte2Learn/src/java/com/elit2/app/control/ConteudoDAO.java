package com.elit2.app.control;

import com.elit2.app.model.Aluno;
import com.elit2.app.model.Conteudo;
import com.elit2.app.model.Professor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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
        stmt.executeUpdate("INSERT INTO tb_login VALUES (" + conteudo.getCd_conteudo() + ",'" + conteudo.getTbProfessor_cd_professor() + "',"
                + "                      '" + conteudo.getTbProfessor_cd_cpf_professor() + "','" + conteudo.getTbImagem_cd_imagem() + "'"
                + "'" + conteudo.getNm_conteudo() + "', '" + conteudo.getDs_conteudo() + "', '" + conteudo.getCd_status() + "')");

    }

    public ArrayList<Conteudo> getConteudosProfessor(Professor professor) throws Exception {
        String sql = "select * from tb_cont c join tb_prof p on (p.cd_prof=c.TB_PROF_CD_PROF) where p.cd_prof=" + professor.getCd_professor();

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Conteudo> conteudos = new ArrayList<Conteudo>();
        while (rs.next()) {
            Conteudo conteudo = new Conteudo(rs.getInt("cd_cont"), rs.getInt("tb_prof_cd_prof"), rs.getInt("tb_prof_cd_cpf"), rs.getInt("tb_imag_cd_imag"), rs.getString("nm_cont"), rs.getString("ds_cont"), rs.getInt("tb_stat_cd_stat"));
            conteudos.add(conteudo);
        }
        con.close();
        stmt.close();
        rs.close();
        return conteudos;
    }

    public ArrayList<Conteudo> getConteudosProfessor(Professor professor, String termo) throws Exception {
        String sql = "select * from tb_cont c join tb_prof p on (p.cd_prof=c.TB_PROF_CD_PROF) where p.cd_prof=" + professor.getCd_professor() + " and upper(nm_cont) LIKE '%" + termo.toUpperCase() + "%' or upper(ds_cont) LIKE '%" + termo.toUpperCase() + "%'";

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Conteudo> conteudos = new ArrayList<Conteudo>();
        while (rs.next()) {
            Conteudo conteudo = new Conteudo(rs.getInt("cd_cont"), rs.getInt("tb_prof_cd_prof"), rs.getInt("tb_prof_cd_cpf"), rs.getInt("tb_imag_cd_imag"), rs.getString("nm_cont"), rs.getString("ds_cont"), rs.getInt("tb_stat_cd_stat"));
            conteudos.add(conteudo);
        }
        con.close();
        stmt.close();
        rs.close();
        return conteudos;
    }

    public int getConteudoSequence() throws Exception {
        String sql = "SELECT COUNT(*) FROM tb_cont";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        int contador = 0;
        while (rs.next()) {
            contador = Integer.parseInt(rs.getString("COUNT(*)")) + 1;
        }
        return contador;
    }

    public ArrayList<Conteudo> getConteudoAluno(Aluno aluno) throws Exception {
        String sql = " select * from tb_cont c join tb_prof p on (c.tb_prof_cd_prof=p.cd_prof)"
                + " join tb_discip_prof dp on (p.cd_prof=dp.tb_prof_cd_prof) "
                + " join tb_discip d on (d.cd_discip=dp.TB_DISCIP_CD_DISCIP)"
                + " join tb_cur_discip cd on (d.CD_DISCIP=cd.tb_discip_cd_discip)"
                + " join tb_cur cu on (cd.TB_CUR_CD_CUR=cu.CD_CUR)"
                + " join tb_tur t on (t.TB_CUR_CD_CUR=cu.CD_CUR)"
                + " join tb_alu al on (al.TB_TUR_TB_CUR_CD_CUR=t.CD_TUR) where cd_alu = "+aluno.getCd_aluno();

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Conteudo> conteudos = new ArrayList<Conteudo>();
        while (rs.next()) {
            Conteudo conteudo = new Conteudo(rs.getInt("cd_cont"), rs.getInt("tb_prof_cd_prof"), rs.getInt("tb_prof_cd_cpf"), rs.getInt("tb_imag_cd_imag"), rs.getString("nm_cont"), rs.getString("ds_cont"), rs.getInt("tb_stat_cd_stat"));
            conteudos.add(conteudo);
        }
        con.close();
        stmt.close();
        rs.close();
        return conteudos;
    }

    public ArrayList<Conteudo> getConteudoAluno(Aluno aluno, String termo) throws Exception {
           String sql = " select * from tb_cont c join tb_prof p on (c.tb_prof_cd_prof=p.cd_prof)"
                + " join tb_discip_prof dp on (p.cd_prof=dp.tb_prof_cd_prof) "
                + " join tb_discip d on (d.cd_discip=dp.TB_DISCIP_CD_DISCIP)"
                + " join tb_cur_discip cd on (d.CD_DISCIP=cd.tb_discip_cd_discip)"
                + " join tb_cur cu on (cd.TB_CUR_CD_CUR=cu.CD_CUR)"
                + " join tb_tur t on (t.TB_CUR_CD_CUR=cu.CD_CUR)"
                + " join tb_alu al on (al.TB_TUR_TB_CUR_CD_CUR=t.CD_TUR) where cd_alu = "+aluno.getCd_aluno()
                + " and upper(c.nm_cont) like '%"+termo.toUpperCase()+"%'";

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Conteudo> conteudos = new ArrayList<Conteudo>();
        while (rs.next()) {
            Conteudo conteudo = new Conteudo(rs.getInt("cd_cont"), rs.getInt("tb_prof_cd_prof"), rs.getInt("tb_prof_cd_cpf"), rs.getInt("tb_imag_cd_imag"), rs.getString("nm_cont"), rs.getString("ds_cont"), rs.getInt("tb_stat_cd_stat"));
            conteudos.add(conteudo);
        }
        con.close();
        stmt.close();
        rs.close();
        return conteudos;
    }

}
