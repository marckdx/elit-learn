/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.elit2.app.model;

/**
 *
 * @author Marco Aurélio
 */
public class Aluno extends Usuario{
    private int cd_alu;
    private String nm_alu;
    private int cd_nivel;

    public Aluno(int cd_alu, String nm_alu, int cd_nivel) {
        this.cd_alu = cd_alu;
        this.nm_alu = nm_alu;
        this.cd_nivel = cd_nivel;
    }

    public int getCd_aluno() {
        return cd_alu;
    }

    public void setCd_aluno(int cd_alu) {
        this.cd_alu = cd_alu;
    }

    public String getNm_aluno() {
        return nm_alu;
    }

    public void setNm_aluno(String nm_alu) {
        this.nm_alu = nm_alu;
    }

    public int getCd_nivel() {
        return cd_nivel;
    }

    public void setCd_nivel(int cd_nivel) {
        this.cd_nivel = cd_nivel;
    }
    
    
}
