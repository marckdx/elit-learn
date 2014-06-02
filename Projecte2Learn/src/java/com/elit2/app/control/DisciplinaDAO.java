package com.elit2.app.control;

import com.elit2.app.model.Disciplina;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * @author Brunno
 */
public class DisciplinaDAO {

    Connection con;
    Statement stmt;
    ResultSet rs;

    /**
     * Retorna todas as disciplinas cadastrados no banco de dados.
     */
    public ArrayList<Disciplina> getDisciplinas() throws Exception {
        String sql = "SELECT * FROM tb_discip";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Disciplina> disci = new ArrayList<Disciplina>();
        while (rs.next()) {
            Disciplina dis = new Disciplina(rs.getInt("cd_discip"), rs.getString("nm_discip"));
            disci.add(dis);
        }
        con.close();
        stmt.close();
        rs.close();
        return disci;
    }

    /**
     * Busca a disciplina.
     */
    public ArrayList<Disciplina> getDisciplinas(String nome) throws Exception {
        String sql = "SELECT * FROM tb_discip WHERE nm_discip LIKE '%" + nome + "%'";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Disciplina> disci = new ArrayList<Disciplina>();
        while (rs.next()) {
            Disciplina dis = new Disciplina(rs.getInt("cd_discip"), rs.getString("nm_discip"));
            disci.add(dis);
        }
        con.close();
        stmt.close();
        rs.close();
        return disci;
    }

    /**
     * Adiciona uma disciplina no banco.
     */
    public int setDisciplina(Disciplina discip) throws Exception {
        String sql = "INSERT INTO tb_discip VALUES (" + discip.getCd_Disciplina() + ",'" + discip.getNm_Disciplina() + "')";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        int result = stmt.executeUpdate(sql);
        con.close();
        stmt.close();
        return result;
    }

    public int getDisciplinaSequence() throws Exception {
        String sql = "SELECT COUNT(*) FROM tb_discip";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        int contador = 0;
        while (rs.next()) {
            contador = Integer.parseInt(rs.getString("COUNT(*)")) + 1;
        }
        return contador;
    }

}
