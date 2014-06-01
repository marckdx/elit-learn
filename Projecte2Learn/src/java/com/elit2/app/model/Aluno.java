package com.elit2.app.model;
/**
 * @author Brunno
 */
public class Aluno extends Usuario {
    private int cd_alu;
    private String nm_alu;
    private int cd_nivel;
    private int tb_login_cd_login;
    public Aluno(int cd_alu, String nm_alu, int cd_nivel, int tb_login_cd_login) {
        this.cd_alu = cd_alu;
        this.nm_alu = nm_alu;
        this.cd_nivel = cd_nivel;
        this.tb_login_cd_login = tb_login_cd_login;
    }
    public int getCd_aluno() {
        return cd_alu;
    }
    public void setCd_aluno(int cd_alu) {
        this.cd_alu = cd_alu;
    }
    public String getNm_aluno() {
        return nm_alu;
    }
    public void setNm_aluno(String nm_alu) {
        this.nm_alu = nm_alu;
    }
    public int getCd_nivel() {
        return cd_nivel;
    }
    public void setCd_nivel(int cd_nivel) {
        this.cd_nivel = cd_nivel;
    }
    public int getCd_login() {
        return tb_login_cd_login;
    }
    public void setCd_login(int tb_login_cd_login) {
        this.tb_login_cd_login = tb_login_cd_login;
    }
}
