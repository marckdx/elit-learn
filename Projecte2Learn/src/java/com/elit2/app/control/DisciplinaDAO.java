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
     * Retorna todas as disciplinas cadastrados no banco de dados
     *
     * @return
     * @throws Exception
     */
    public ArrayList<Disciplina> getDisciplina() throws Exception {
        String sql = "SELECT nm_disciplina FROM tb_disciplina";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Disciplina> disci = new ArrayList<Disciplina>();
        while (rs.next()) {
            Disciplina dis = new Disciplina(rs.getInt("cd_disciplina"), rs.getString("nm_disciplina"));
            disci.add(dis);
        }
        con.close();
        stmt.close();
        rs.close();
        return disci;
    }
}