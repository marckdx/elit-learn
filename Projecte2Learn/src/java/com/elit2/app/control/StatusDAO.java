/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

import com.elit2.app.model.Aluno;
import com.elit2.app.model.Avaliacao;
import com.elit2.app.model.Status;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ivan Aurélio
 */
public class StatusDAO {

    Connection con;
    Statement stmt;
    ResultSet rs;

    public ArrayList<Status> getStatusAvaliacao(Avaliacao avaliacao) throws Exception {
        String sql = "select * from tb_stat s join tb_avali a on (a.TB_STAT_CD_STAT=s.CD_STAT) where a.CD_AVALI =" + avaliacao.getCd_avaliacao();

        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Status> status = new ArrayList<Status>();
        while (rs.next()) {
            Status statusa = new Status(rs.getInt("cd_stat"), rs.getString("ic_stat").charAt(0), rs.getInt("cd_alu"));
            status.add(statusa);
        }
        con.close();
        stmt.close();
        rs.close();
        return status;
    }
}
