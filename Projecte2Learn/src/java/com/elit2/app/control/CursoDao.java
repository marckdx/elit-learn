/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

import com.elit2.app.model.Aluno;
import com.elit2.app.model.Avaliacao;
import com.elit2.app.model.Curso;
import com.elit2.app.model.Professor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Valmir Desktop
 */
public class CursoDao {

    Connection con;
    Statement stmt;
    ResultSet rs;

    /**
     * Retorna todos os Cursos
     *
     * @return
     * @throws Exception
     */
    public ArrayList<Curso> getCurso() throws Exception {
        String sql = "SELECT * FROM tb_cur";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Curso> cursos = new ArrayList<Curso>();
        while (rs.next()) {
            Curso curso = new Curso(rs.getInt("cd_cur"), rs.getString("nm_cur"));
            cursos.add(curso);
        }
        con.close();
        stmt.close();
        rs.close();
        return cursos;
    }
    
        public int getCursoSequence() throws Exception{
        String sql = "SELECT COUNT(*) FROM tb_cur";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        int contador = 0;
        while(rs.next()){
            contador = Integer.parseInt(rs.getString("COUNT(*)"))+1;
        }
        return contador;
    }

}
