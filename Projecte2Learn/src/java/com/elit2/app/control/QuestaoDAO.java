/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.control;

import com.elit2.app.model.Avaliacao;
import com.elit2.app.model.Questao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Marco Aurélio
 */
public class QuestaoDAO {

    Connection con;
    Statement stmt;
    ResultSet rs;

    public ArrayList<Questao> getQuestoes(Avaliacao aval) throws Exception {
        String sql = "SELECT * FROM tb_quest q JOIN tb_avali_quest aq ON (aq.tb_quest_cd_quest=q_cd_quest) "
                + " JOIN tb_avali a ON(aq.tb_avali_cd_avali=a.cd_avali)"
                + " WHERE a.cd_avali=" + aval.getCd_avaliacao();
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<Questao> quests = new ArrayList<Questao>();
        while (rs.next()) {
            Questao quest = new Questao(rs.getInt("cd_questao"), rs.getString("nm_questao"), rs.getString("ds_questao"), rs.getInt("ic_resposta"), rs.getInt("cd_nivel"));
            quests.add(quest);
        }
        con.close();
        stmt.close();
        rs.close();
        return quests;
    }

    public int setQuestao(Questao questao, Avaliacao aval) throws Exception {
        con = new OracleConnector().getConnection();
        stmt = con.createStatement();
        int result = stmt.executeUpdate("INSERT INTO tb_quest VALUES (" + questao.getCd_questao() + ",'" + questao.getDs_questao() + "'," + questao.getIc_resposta() +","+questao.getCd_nivel()+ ")");
        return result;
    }
}
