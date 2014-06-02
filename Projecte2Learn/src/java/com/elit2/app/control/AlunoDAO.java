package com.elit2.app.control;

import com.elit2.app.model.Aluno;
import com.elit2.app.model.Professor;
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
     
     public ArrayList<Aluno> getAlunosProfessor(Professor professor, String termo) throws Exception {
        String sql = "select * from tb_alu a join tb_tur t on(t.cd_tur=a.tb_tur_cd_tur) "
                + "join tb_cur c on (c.cd_cur=t.tb_cur_cd_cur)"
                + "join tb_cur_discip cd on (cd.TB_CUR_CD_CUR=c.CD_CUR)"
                + "join tb_discip d on (d.CD_DISCIP = cd.TB_DISCIP_CD_DISCIP)"
                + "join tb_discip_prof dp on (dp.TB_DISCIP_CD_DISCIP=cd.TB_DISCIP_CD_DISCIP)"
                + "join tb_prof p on (p.CD_PROF=dp.TB_PROF_CD_PROF) WHERE p.cd_prof = "+professor.getCd_professor() 
                + " AND a.nm_alu LIKE '%"+termo+"%'";
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
