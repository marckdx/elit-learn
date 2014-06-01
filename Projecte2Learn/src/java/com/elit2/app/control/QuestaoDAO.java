/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.elit2.app.control;

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
    
    public ArrayList<Questao> getQuestoes(){
        return null;
    }
}
