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
public class Instituicao {

    private int cd_instituicao;
    private String nm_instituicao;

    public Instituicao(int cd_instituicao, String nm_instituicao) {
        this.cd_instituicao = cd_instituicao;
        this.nm_instituicao = nm_instituicao;
    }

    public int getCd_instituicao() {
        return cd_instituicao;
    }

    public void setCd_instituicao(int cd_instituicao) {
        this.cd_instituicao = cd_instituicao;
    }

    public String getNm_instituicao() {
        return nm_instituicao;
    }

    public void setNm_instituicao(String nm_instituicao) {
        this.nm_instituicao = nm_instituicao;
    }

}
