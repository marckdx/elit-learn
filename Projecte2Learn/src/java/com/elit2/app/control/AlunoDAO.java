package com.elit2.app.control;

import com.elit2.app.model.Aluno;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
/**
 *
 * @author Brunno
 */
public class AlunoDAO {
    Connection con;
    Statement stmt;
    ResultSet rs;

    //Retorna todos os alunos cadastrados no banco.
    
    public ArrayList<Aluno> getAluno() throws Exception {
        String sql = "SELECT * FROM tb_alu";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Aluno> aluno = new ArrayList<Aluno>();
        while (rs.next()) {
            Aluno alu = new Aluno(rs.getInt("cd_alu"), rs.getString("nm_alu"), rs.getInt("cd_niv"), rs.getInt("tb_login_cd_login"));
            aluno.add(alu);
        }
        con.close();
        stmt.close();
        rs.close();
        return aluno;
    }
    
     /** retorna o login relacionado ao aluno  */
    
    public ArrayList<Aluno> getAluno(int cd_alu) throws Exception {
        String sql = "SELECT tp_login FROM tb_alu WHERE cd_alu=" + cd_alu;
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Aluno> aluno = new ArrayList<Aluno>();
        while (rs.next()) {
            Aluno alu = new Aluno(rs.getInt("cd_alu"), rs.getString("nm_alu"), rs.getInt("cd_niv"), rs.getInt("tb_login_cd_login"));
            aluno.add(alu);
        }
        con.close();
        stmt.close();
        rs.close();
        return aluno;
    }

    /** Método que retorna o aluno relacionado ao login  */
    
    public Aluno getAlunoPorLogin(int tb_login_cd_login) throws Exception {
        String sql = "SELECT * FROM tb_alu WHERE tb_login_cd_login=" + tb_login_cd_login;
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        Aluno aluno = null;
        while (rs.next()) {
            aluno = new Aluno(rs.getInt("cd_alu"), rs.getString("nm_alu"), rs.getInt("cd_niv"), rs.getInt("tb_login_cd_login"));
        }
        con.close();
        stmt.close();
        rs.close();
        return aluno;
    }
}
