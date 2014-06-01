package com.elit2.app.model;
/** @author Brunno */
public class Disciplina extends Usuario{
    private int cd_discip;
    private String nm_discip;
    public Disciplina(int cd_discip, String nm_discip) {
        this.cd_discip = cd_discip;
        this.nm_discip = nm_discip;
    }
    public int getCd_Disciplina() {
        return cd_discip;
    }
    public void setCd_Disciplina(int cd_discip) {
        this.cd_discip = cd_discip;
    }
    public String getNm_Disciplina() {
        return nm_discip;
    }
    public void setNm_Disciplina(String nm_discip) {
        this.nm_discip = nm_discip;
    }
}