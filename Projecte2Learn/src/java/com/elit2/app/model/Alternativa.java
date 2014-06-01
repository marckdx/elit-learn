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
public class Alternativa {

    private int cd_alternativa;
    private String ds_alternativa;

    public Alternativa(int cd_alternativa, String ds_alternativa) {
        this.cd_alternativa = cd_alternativa;
        this.ds_alternativa = ds_alternativa;
    }

    public int getCd_alternativa() {
        return cd_alternativa;
    }

    public void setCd_alternativa(int cd_alternativa) {
        this.cd_alternativa = cd_alternativa;
    }

    public String getDs_alternativa() {
        return ds_alternativa;
    }

    public void setDs_alternativa(String ds_alternativa) {
        this.ds_alternativa = ds_alternativa;
    }

}
