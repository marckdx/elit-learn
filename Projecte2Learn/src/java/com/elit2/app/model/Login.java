/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.model;

/**
 *
 * @author ELIT IT 
 * @since 31/05/2014
 * @version 1.0
 */
public class Login {

    private int cd_login;
    private String nm_email;
    private String nm_senha;
    private int tp_login;

    public Login(int cd_login, String nm_email, String nm_senha, int tp_login) {
        this.cd_login = cd_login;
        this.nm_email = nm_email;
        this.nm_senha = nm_senha;
        this.tp_login = tp_login;
    }
    
    public int getCd_login() {
        return cd_login;
    }

    public void setCd_login(int cd_login) {
        this.cd_login = cd_login;
    }

    public String getNm_email() {
        return nm_email;
    }

    public void setNm_email(String nm_email) {
        this.nm_email = nm_email;
    }

    public String getNm_senha() {
        return nm_senha;
    }

    public void setNm_senha(String nm_senha) {
        this.nm_senha = nm_senha;
    }

    public int getTp_login() {
        return tp_login;
    }

    public void setTp_login(int tp_login) {
        this.tp_login = tp_login;
    }
    
    
}
