/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

/**
 *
 * @author Valmir Desktop
 */
import com.elit2.app.model.Aluno;
import com.elit2.app.model.Professor;
import com.elit2.app.model.Avaliacao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AvaliacaoDAO {

    Connection con;
    Statement stmt;
    ResultSet rs;

    /**
     * Retorna todas as Avaliações
     *
     * @return
     * @throws Exception
     */
    public ArrayList<Avaliacao> getAvaliacao() throws Exception {
        String sql = "SELECT * FROM tb_Avali";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();
        while (rs.next()) {
            Avaliacao avali = new Avaliacao(rs.getInt("cd_avali"), rs.getString("nm_avali"));
            avaliacoes.add(avali);
        }
        con.close();
        stmt.close();
        rs.close();
        return avaliacoes;
    }

    /**
     * Retorna todas as avaliações de um determinado professor
     *
     * @param Professor
     * @return
     */
    public ArrayList<Avaliacao> getAvaliacaoProfessor(Professor prof) throws Exception {
        String sql = " select * from tb_avali a"
                + " join tb_cont c on(a.tb_cont_cd_cont=c.cd_cont)"
                + " join tb_prof p on(c.tb_prof_cd_prof = p.cd_prof)"
                + " where p.cd_prof = 1" /*+ prof.getCd_professor()*/;

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();

        while (rs.next()) {

            Avaliacao avaliacao = new Avaliacao(rs.getInt("cd_avali"), rs.getString("nm_aval"));
            avaliacoes.add(avaliacao);
        }
        con.close();
        stmt.close();
        rs.close();
        return avaliacoes;
    }

    public ArrayList<Avaliacao> getAvaliacaoProfessor(Professor prof, String termo) throws Exception {
        String sql = " select * from tb_avali a"
                + " join tb_cont c on(a.tb_cont_cd_cont=c.cd_cont)"
                + " join tb_prof p on(c.tb_prof_cd_prof = p.cd_prof)"
                + " where p.cd_prof = " + prof.getCd_professor() + " and upper(a.nm_aval) like '%" + termo.toUpperCase() + "%'";

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();

        while (rs.next()) {

            Avaliacao avaliacao = new Avaliacao(rs.getInt("cd_avali"), rs.getString("nm_aval"));
            avaliacoes.add(avaliacao);
        }
        con.close();
        stmt.close();
        rs.close();
        return avaliacoes;
    }

    /**
     * Retorna todas as avaliações de um determinado aluno
     *
     * @param Aluno
     * @return
     * @throws Exception
     */
    public ArrayList<Avaliacao> getAvaliacaoAluno(Aluno aluno) throws Exception {
        String sql = " SELECT * FROM tb_avali a"
                + " join tb_cont c on(a.tb_cont_cd_cont=c.cd_cont)"
                + " join tb_prof p on(c.tb_prof_cd_prof = p.cd_prof)"
                + " join tb_discip_prof dp on(p.cd_prof = dp.tb_prof_cd_prof)"
                + " join tb_discip d on(dp.tb_discip_cd_discip = d.cd_discip)"
                + " join tb_cur_discip cd on(d.cd_discip = cd.tb_discip_cd_discip)"
                + " join tb_cur cur on(cur.cd_cur = cd.tb_cur_cd_cur)"
                + " join tb_tur t on(t.tb_cur_cd_cur = cur.cd_cur)"
                + " join tb_alu alu on(alu.tb_tur_cd_tur = t.cd_tur)"
                + " WHERE alu.cd_alu='" + aluno.getCd_aluno() + "'";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();
        while (rs.next()) {
            Avaliacao avaliacao = new Avaliacao(rs.getInt("cd_avali"), rs.getString("nm_aval"));
            avaliacoes.add(avaliacao);
        }
        con.close();
        stmt.close();
        rs.close();
        return avaliacoes;
    }

    public ArrayList<Avaliacao> getAvaliacaoAluno(Aluno aluno, String termo) throws Exception {
        String sql = "SELECT * FROM tb_avali a"
                + "join tb_cont c on(a.tb_cont_cd_cont=c.cd_cont)"
                + "join tb_prof p on(c.tb_prof_cd_prof = p.cd_prof)"
                + "join tb_discip_prof dp on(p.cd_prof = dp.tb_prof_cd_prof)"
                + "join tb_discip d on(dp.tb_discip_cd_discip = d.cd_discip)"
                + "join tb_cur_discip cd on(d.cd_discip = d.cd_tb_discip_cd_discip)"
                + "join tb_cur cur on(cur.cd_cur = cd.tb_cur_cd_cur)"
                + "join tb_tur t on(t.tb_cur_cd_cur = cur.cd_cur)"
                + "join tb_alu alu on(alu.tb_tur_cd_tur = t.cd_tur)"
                + "WHERE alu.cd_alu='" + aluno.getCd_aluno() + "' and upper(nm_aval) like '%"+termo+"%'";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();
        while (rs.next()) {
            Avaliacao avaliacao = new Avaliacao(rs.getInt("cd_avali"), rs.getString("nm_aval"));
            avaliacoes.add(avaliacao);
        }
        con.close();
        stmt.close();
        rs.close();
        return avaliacoes;
    }
    
    /**
     * Faz a inserção de valores
     *
     * @param Avaliacao
     * @return
     * @throws Exception
     */
    public void setInsereConteudo(Avaliacao avaliacao) throws Exception {
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        stmt.executeUpdate("INSERT INTO tb_avali VALUES ('" + avaliacao.getCd_avaliacao() + "''," + avaliacao.getNm_avaliacao() + "')");
    }

    public void setDeleteConteudo(Avaliacao avaliacao) throws Exception {
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        stmt.executeUpdate("DELETE ROM tb_avali VALUES ('" + avaliacao.getCd_avaliacao() + "''," + avaliacao.getNm_avaliacao() + "')"
                + "WHERE cd_avali='" + avaliacao.getCd_avaliacao()
                + "");
    }

}
