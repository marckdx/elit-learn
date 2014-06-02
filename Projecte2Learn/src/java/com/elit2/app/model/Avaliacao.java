/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.model;

/**
 *
 * @author Valmir Desktop
 */
public class Avaliacao {

    private int cd_avaliacao;
    private String nm_avaliacao;
    private String nm_professor;
    private String nm_disciplina;
    private boolean ic_status;

    public Avaliacao(int cd_avaliacao, String nm_avaliacao) {
        this.cd_avaliacao = cd_avaliacao;
        this.nm_avaliacao = nm_avaliacao;
    }

    public Avaliacao(int cd_avaliacao, String nm_avaliacao, String nm_professor, String nm_disciplina, boolean ic_status) {
        this.cd_avaliacao = cd_avaliacao;
        this.nm_avaliacao = nm_avaliacao;
        this.nm_professor = nm_professor;
        this.nm_disciplina = nm_disciplina;
        this.ic_status = ic_status;
    }
     public Avaliacao(int cd_avaliacao, String nm_avaliacao, String nm_professor, String nm_disciplina) {
        this.cd_avaliacao = cd_avaliacao;
        this.nm_avaliacao = nm_avaliacao;
        this.nm_professor = nm_professor;
        this.nm_disciplina = nm_disciplina;
    }

    public int getCd_avaliacao() {
        return cd_avaliacao;
    }

    public void setCd_avaliacao(int cd_avaliacao) {
        this.cd_avaliacao = cd_avaliacao;
    }

    public String getNm_avaliacao() {
        return nm_avaliacao;
    }

    public void setNm_avaliacao(String nm_avaliacao) {
        this.nm_avaliacao = nm_avaliacao;
    }

    public String getNm_professor() {
        return nm_professor;
    }

    public String getNm_disciplina() {
        return nm_disciplina;
    }

    public boolean isIc_status() {
        return ic_status;
    }

    
}
