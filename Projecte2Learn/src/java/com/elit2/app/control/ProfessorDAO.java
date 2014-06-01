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
        String sql = "SELECT tp_login FROM tb_prof";
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
     * Retorna todos os professores de um determinado aluno
     *
     * @param aluno
     * @return
     */
    public ArrayList<Professor> getProfessorAlunos(Aluno aluno) throws Exception {
        String sql = "select * from tb_prof p "
                + "join tb_disciplina_professor dp on(dp.tb_prof_cd_prof=p.cd_prof)"
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
}
