package com.elit2.app.model;
/** @author Valmir */
public class Curso {
    private int cd_cur;
    private String nm_cur;
    public Curso(int cd_cur, String nm_cur) {
        this.cd_cur = cd_cur;
        this.nm_cur = nm_cur;
    }
    public int getCd_Curso() {
        return cd_cur;
    }
    public void setCd_Curso(int cd_cur) {
        this.cd_cur = cd_cur;
    }
    public String getNm_Curso() {
        return nm_cur;
    }
    public void setNm_Curso(String nm_cur) {
        this.nm_cur = nm_cur;
    }
}