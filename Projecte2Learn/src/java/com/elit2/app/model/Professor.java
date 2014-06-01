package com.elit2.app.model;

public class Professor extends Usuario{
    private int cd_prof;
    private String nm_prof;
    private int cd_cpf;
    private int tb_login_cd_login;

    public Professor(int cd_prof, String nm_prof, int cd_cpf, int tb_login_cd_login) {
        this.cd_prof = cd_prof;
        this.nm_prof = nm_prof;
        this.cd_cpf = cd_cpf;
        this.tb_login_cd_login = tb_login_cd_login;
    }

    public int getCd_professor() {
        return cd_prof;
    }

    public void setCd_professor(int cd_prof) {
        this.cd_prof = cd_prof;
    }

    public String getNm_professor() {
        return nm_prof;
    }

    public void setNm_professor(String nm_prof) {
        this.nm_prof = nm_prof;
    }

    public int getCd_cpf() {
        return cd_cpf;
    }

    public void setCd_cpf(int cd_cpf) {
        this.cd_cpf = cd_cpf;
    }

    public int getCd_login() {
        return tb_login_cd_login;
    }

    public void setCd_login(int tb_login_cd_login) {
        this.tb_login_cd_login = tb_login_cd_login;
    }
    
    
}

