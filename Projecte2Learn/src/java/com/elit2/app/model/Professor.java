package com.elit2.app.model;

public class Professor extends Usuario{
    private int cd_professor;
    private String nm_professor;
    private int cd_cpf;
    private int cd_login;

    public Professor(int cd_professor, String nm_professor, int cd_cpf, int cd_login) {
        this.cd_professor = cd_professor;
        this.nm_professor = nm_professor;
        this.cd_cpf = cd_cpf;
        this.cd_login = cd_login;
    }

    public int getCd_professor() {
        return cd_professor;
    }

    public void setCd_professor(int cd_professor) {
        this.cd_professor = cd_professor;
    }

    public String getNm_professor() {
        return nm_professor;
    }

    public void setNm_professor(String nm_professor) {
        this.nm_professor = nm_professor;
    }

    public int getCd_cpf() {
        return cd_cpf;
    }

    public void setCd_cpf(int cd_cpf) {
        this.cd_cpf = cd_cpf;
    }

    public int getCd_login() {
        return cd_login;
    }

    public void setCd_login(int cd_login) {
        this.cd_login = cd_login;
    }
    
    
}

