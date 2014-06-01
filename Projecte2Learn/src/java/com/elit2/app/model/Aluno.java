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
    private int cd_aluno;
    private String nm_aluno;
    private int cd_nivel;

    public Aluno(int cd_aluno, String nm_aluno, int cd_nivel) {
        this.cd_aluno = cd_aluno;
        this.nm_aluno = nm_aluno;
        this.cd_nivel = cd_nivel;
    }

    public int getCd_aluno() {
        return cd_aluno;
    }

    public void setCd_aluno(int cd_aluno) {
        this.cd_aluno = cd_aluno;
    }

    public String getNm_aluno() {
        return nm_aluno;
    }

    public void setNm_aluno(String nm_aluno) {
        this.nm_aluno = nm_aluno;
    }

    public int getCd_nivel() {
        return cd_nivel;
    }

    public void setCd_nivel(int cd_nivel) {
        this.cd_nivel = cd_nivel;
    }
    
    
}
