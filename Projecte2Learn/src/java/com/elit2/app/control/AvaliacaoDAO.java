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
     * Retorna todos os professores cadastrados no banco de dados
     *
     * @return
     * @throws Exception
     */
    public ArrayList<Avaliacao> getAvaliacao() throws Exception {
        String sql = "SELECT * FROM tb_Avaliacao";
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
     * Retorna todos os professores de um determinado aluno
     *
     * @param aluno
     * @return
     */
    public ArrayList<Avaliacao> getAvaliacaoAluno(Aluno aluno) throws Exception {
        String sql = "select * from tb_avali a "
                + "join tb_cont c on(a.tb_cd_)"
                + "join tb_disciplina d on(dp.tb_disciplina_cd_disciplina=d.cd_disciplina)"
                + "join tb_curso_disciplina cd on(cd.tb_curso_disciplina_cd_disciplina=d.cd_disciplina)"
                + "join tb_curso c on(c.cd_curso=cd.tb_curso_cd_curso)"
                + "join tb_curso_turma ct on (c.cd_curso=ct.tb_curso_cd_curso)"
                + "join tb_turma t on(t.cd_turma=ct.tb_turma_cd_turma)"
                + "join tb_aluno a on(a.tb_turma_cd_turma=t.cd_turma)"
                + "where a.cd_aluno = " + aluno.getCd_aluno();

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();

        while (rs.next()) {
            Professor profe = new Professor(rs.getInt("cd_prof"), rs.getString("nm_prof"), rs.getInt("cd_cpf"), rs.getInt("tb_login_cd_login"));
            profes.add(profe);
        }
        con.close();
        stmt.close();
        rs.close();
        return profes;
    }

    /**
     *
     * @param cd_prof
     * @return
     * @throws Exception
     */
    public ArrayList<Professor> getProfessor(int cd_prof) throws Exception {
        String sql = "SELECT tp_login FROM tb_prof WHERE cd_prof=" + cd_prof;
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Professor> profes = new ArrayList<Professor>();
        while (rs.next()) {
            Professor profe = new Professor(rs.getInt("cd_prof"), rs.getString("nm_prof"), rs.getInt("cd_cpf"), rs.getInt("tb_login_cd_login"));
            profes.add(profe);
        }
        con.close();
        stmt.close();
        rs.close();
        return profes;
    }

    /**
     * Método que retorna o professor relacionado ao login
     *
     * @param tb_login_cd_login
     * @return
     * @throws Exception
     */
    public Professor getProfessorPorLogin(int tb_login_cd_login) throws Exception {
        String sql = "SELECT * FROM tb_prof WHERE tb_login_cd_login=" + tb_login_cd_login;
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        Professor profe = null;
        while (rs.next()) {
            profe = new Professor(rs.getInt("cd_prof"), rs.getString("nm_prof"), rs.getInt("cd_cpf"), rs.getInt("tb_login_cd_login"));
        }
        con.close();
        stmt.close();
        rs.close();
        return profe;
    }
    public ArrayList<Aluno> getAlunosProfessor(Professor professor) throws Exception {
        String sql = "select * from tb_alu a join tb_tur t on(t.cd_tur=a.tb_tur_cd_tur) "
                + "join tb_cur c on (c.cd_cur=t.tb_cur_cd_cur)"
                + "join tb_cur_discip cd on (cd.TB_CUR_CD_CUR=c.CD_CUR)"
                + "join tb_discip d on (d.CD_DISCIP = cd.TB_DISCIP_CD_DISCIP)"
                + "join tb_discip_prof dp on (dp.TB_DISCIP_CD_DISCIP=cd.TB_DISCIP_CD_DISCIP)"
                + "join tb_prof p on (p.CD_PROF=dp.TB_PROF_CD_PROF) WHERE cd_prof = "+professor.getCd_professor();
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Aluno> alunos = new ArrayList<Aluno>();
        while (rs.next()) {
            Aluno aluno = new Aluno(rs.getInt("cd_alu"), rs.getString("nm_alu"), rs.getInt("cd_niv"), rs.getInt("tb_login_cd_login"));
            alunos.add(aluno);
        }
        con.close();
        stmt.close();
        rs.close();
        return alunos;
    }
}
