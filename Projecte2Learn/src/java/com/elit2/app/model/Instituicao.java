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

    private int cd_int;
    private String nm_inst;

    public Instituicao(int cd_int, String nm_inst) {
        this.cd_int = cd_int;
        this.nm_inst = nm_inst;
    }

    public int getCd_instituicao() {
        return cd_int;
    }

    public void setCd_instituicao(int cd_int) {
        this.cd_int = cd_int;
    }

    public String getNm_instituicao() {
        return nm_inst;
    }

    public void setNm_instituicao(String nm_inst) {
        this.nm_inst = nm_inst;
    }

}
