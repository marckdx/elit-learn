/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.elit2.app.model;

/**
 *
 * @author Jhonatan
 */
public class Turma {
    private int cd_tur;
    private String nm_tur;
    private int tb_curso_cd_curso;

    public Turma(int cd_tur, String nm_tur, int tb_curso_cd_curso) {
        this.cd_tur = cd_tur;
        this.nm_tur = nm_tur;
        this.tb_curso_cd_curso = tb_curso_cd_curso;
    }

    public int getCd_tur() {
        return cd_tur;
    }

    public String getNm_tur() {
        return nm_tur;
    }

    public int getTb_curso_cd_curso() {
        return tb_curso_cd_curso;
    }

    public void setCd_tur(int cd_tur) {
        this.cd_tur = cd_tur;
    }

    public void setNm_tur(String nm_tur) {
        this.nm_tur = nm_tur;
    }

    public void setTb_curso_cd_curso(int tb_curso_cd_curso) {
        this.tb_curso_cd_curso = tb_curso_cd_curso;
    }
}
