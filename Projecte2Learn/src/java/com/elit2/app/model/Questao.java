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
public class Questao {
  private int  cd_questao;
  private String  nm_questao;
  private String  ds_questao;
  private int  ic_resposta;
  private int  cd_nivel;

    public Questao(int cd_questao, String nm_questao, String ds_questao, int ic_resposta, int cd_nivel) {
        this.cd_questao = cd_questao;
        this.nm_questao = nm_questao;
        this.ds_questao = ds_questao;
        this.ic_resposta = ic_resposta;
        this.cd_nivel = cd_nivel;
    }

    public int getCd_questao() {
        return cd_questao;
    }

    public void setCd_questao(int cd_questao) {
        this.cd_questao = cd_questao;
    }

    public String getNm_questao() {
        return nm_questao;
    }

    public void setNm_questao(String nm_questao) {
        this.nm_questao = nm_questao;
    }

    public String getDs_questao() {
        return ds_questao;
    }

    public void setDs_questao(String ds_questao) {
        this.ds_questao = ds_questao;
    }

    public int getIc_resposta() {
        return ic_resposta;
    }

    public void setIc_resposta(int ic_resposta) {
        this.ic_resposta = ic_resposta;
    }

    public int getCd_nivel() {
        return cd_nivel;
    }

    public void setCd_nivel(int cd_nivel) {
        this.cd_nivel = cd_nivel;
    }
  
  
            
}
