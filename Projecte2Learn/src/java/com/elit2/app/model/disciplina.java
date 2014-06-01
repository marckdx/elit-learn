package com.elit2.app.model;
/** @author Brunno */
public class disciplina {
    private int cd_disciplina;
    private String nm_disciplina;

    public disciplina(int cd_disciplina, String nm_disciplina) {
        this.cd_disciplina = cd_disciplina;
        this.nm_disciplina = nm_disciplina;
    }

    public int getCd_disciplina() {
        return cd_disciplina;
    }

    public void setCd_disciplina(int cd_disciplina) {
        this.cd_disciplina = cd_disciplina;
    }

    public String getNm_disciplina() {
        return nm_disciplina;
    }

    public void setNm_disciplina(String nm_disciplina) {
        this.nm_disciplina = nm_disciplina;
    }
}
