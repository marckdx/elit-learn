/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

import com.elit2.app.model.Instituicao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Marco Aurélio
 */
public class InstituicaoDAO {

    Connection con;
    Statement stmt;
    ResultSet rs;

    public ArrayList<Instituicao> getInstituicoes() throws Exception {
        String sql = "SELECT tp_login FROM tb_prof";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Instituicao> insts = new ArrayList<Instituicao>();
        while (rs.next()) {
            Instituicao inst = new Instituicao(rs.getInt("cd_int"), rs.getString("nm_inst"));
            insts.add(inst);
        }
        con.close();
        stmt.close();
        rs.close();
        return insts;
    }

    public ArrayList<Instituicao> getInstituicoes(String nome) throws Exception {
        String sql = "SELECT * FROM tb_inst WHERE nm_inst LIKE '%" + nome + "%'";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Instituicao> insts = new ArrayList<Instituicao>();
        while (rs.next()) {
            Instituicao inst = new Instituicao(rs.getInt("cd_int"), rs.getString("nm_inst"));
            insts.add(inst);
        }
        con.close();
        stmt.close();
        rs.close();
        return insts;
    }
    
    public int setInstituicao(Instituicao inst) throws Exception{
        String sql = "INSERT INTO tb_inst VALUES ("+inst.getCd_instituicao()+",'"+inst.getNm_instituicao()+"')";
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        int result = stmt.executeUpdate(sql);
        con.close();
        stmt.close();
        return result;
    }
    
        public int getInstituicaoSequence() throws Exception{
        String sql = "SELECT COUNT(*) FROM tb_inst";
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
