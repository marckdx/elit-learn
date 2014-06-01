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
    private int cd_avali;
    private String nm_aval;

    public Avaliacao(int cd_avali, String nm_aval) {
        this.cd_avali = cd_avali;
        this.nm_aval = nm_aval;
    }

    public int getCd_avaliacao() {
        return cd_avali;
    }

    public void setCd_avaliacao(int cd_avali) {
        this.cd_avali = cd_avali;
    }

    public String getNm_avaliacao() {
        return nm_aval;
    }

    public void setNm_avaliacao(String nm_aval) {
        this.nm_aval = nm_aval;
    }
    
}
