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

        String sql = "SELECT * FROM tb_tur t JOIN tb_curso c ON (c.cd_curso = t.TB_CURSO_CD_CURSO)";

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Turma> turmas = new ArrayList<Turma>();
        while (rs.next()) {
            Turma turm = new Turma(rs.getInt("cd_tur"), rs.getString("nm_tur"), rs.getInt("tb_curso_cd_curso"));
            turmas.add(turm);
        }
        con.close();
        stmt.close();
        rs.close();
        return turmas;
    }

    public int getTurmaSequence() throws Exception {
        String sql = "SELECT COUNT(*) FROM tb_tur";
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
