/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

import com.elit2.app.model.Turma;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class TurmaDAO {

    Connection con;
    Statement stmt;
    ResultSet rs;

    public ArrayList<Turma> getTurma(Turma tur) throws Exception {

        String sql = "SELECT * FROM tb_tur";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Turma> turmas = new ArrayList<Turma>();
        while (rs.next()) {
            Turma quest = new Turma(rs.getInt("cd_tur"), rs.getString("nm_tur"), rs.getInt("tb_curso_cd_curso"));
            turmas.add(quest);
        }
        con.close();
        stmt.close();
        rs.close();
        return turmas;
    }
}
