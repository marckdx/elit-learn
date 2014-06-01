/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

import com.elit2.app.model.Aluno;
import com.elit2.app.model.Professor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Marco Aurélio
 */
public class ProfessorDAO {

    Connection con;
    Statement stmt;
    ResultSet rs;

    /**
     * Retorna todos os professores cadastrados no banco de dados
     *
     * @return
     * @throws Exception
     */
    public ArrayList<Professor> getProfessor() throws Exception {
        String sql = "SELECT tp_login FROM tb_professor";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Professor> profes = new ArrayList<Professor>();
        while (rs.next()) {
            Professor profe = new Professor(rs.getInt("cd_professor"), rs.getString("nm_professor"), rs.getInt("cd_cpf"), rs.getInt("cd_login"));
            profes.add(profe);
        }
        con.close();
        stmt.close();
        rs.close();
        return profes;
    }

    /**
     * Retorna todos os professores de um determinado aluno
     *
     * @param aluno
     * @return
     */
    public ArrayList<Professor> getProfessorAlunos(Aluno aluno) throws Exception {
        String sql = "select p.nm_professor from tb_professor p \n"
                + "join tb_disciplina_professor dp on(dp.tb_professor_cd_professor=p.cd_professor)\n"
                + "join tb_disciplina d on (dp.tb_disciplina_cd_disciplina=d.cd_disciplina) \n"
                + "join tb_curso_disciplina cd on (cd.tb_curso_disciplina_cd_disciplina=d.cd_disciplina)\n"
                + "join tb_curso c on (c.cd_curso=cd.tb_curso_cd_curso)\n"
                + "join tb_curso_turma ct on (c.cd_curso=ct.tb_curso_cd_curso)\n"
                + "join tb_turma t on(t.cd_turma=ct.tb_turma_cd_turma)\n"
                + "join tb_aluno a on(a.tb_turma_cd_turma=t.cd_turma)\n"
                + "where a.cd_aluno = " + aluno.getCd_aluno();

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Professor> profes = new ArrayList<Professor>();

        while (rs.next()) {
            Professor profe = new Professor(rs.getInt("cd_professor"), rs.getString("nm_professor"), rs.getInt("cd_cpf"), rs.getInt("cd_login"));
            profes.add(profe);
        }
        con.close();
        stmt.close();
        rs.close();
        return profes;
    }

    /**
     *
     * @param cd_professor
     * @return
     * @throws Exception
     */
    public ArrayList<Professor> getProfessor(int cd_professor) throws Exception {
        String sql = "SELECT tp_login FROM tb_professor WHERE cd_professor=" + cd_professor;
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Professor> profes = new ArrayList<Professor>();
        while (rs.next()) {
            Professor profe = new Professor(rs.getInt("cd_professor"), rs.getString("nm_professor"), rs.getInt("cd_cpf"), rs.getInt("cd_login"));
            profes.add(profe);
        }
        con.close();
        stmt.close();
        rs.close();
        return profes;
    }

    /**
     * Método que retorna o professor relacionado ao login
     * @param cd_login
     * @return
     * @throws Exception
     */
    public Professor getProfessorPorLogin(int cd_login) throws Exception {
        String sql = "SELECT * FROM tb_professor WHERE cd_login=" + cd_login;
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        Professor profe = null;
        while (rs.next()) {
            profe = new Professor(rs.getInt("cd_professor"), rs.getString("nm_professor"), rs.getInt("cd_cpf"), rs.getInt("cd_login"));
        }
        con.close();
        stmt.close();
        rs.close();
        return profe;
    }
}
