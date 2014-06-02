/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elit2.app.model;

/**
 *
 * @author Ivan Aurélio
 */
public class Status {

    private int cd_stat;
    private char ic_stat;
    private int cd_alu;

    public Status(int cd_stat, char ic_stat, int cd_alu) {
        this.cd_stat = cd_stat;
        this.ic_stat = ic_stat;
        this.cd_alu = cd_alu;
    }

    public int getCd_stat() {
        return cd_stat;
    }

    public void setCd_stat(int cd_stat) {
        this.cd_stat = cd_stat;
    }

    public char getIc_stat() {
        return ic_stat;
    }

    public void setIc_stat(char ic_stat) {
        this.ic_stat = ic_stat;
    }

    public int getCd_alu() {
        return cd_alu;
    }

    public void setCd_alu(int cd_alu) {
        this.cd_alu = cd_alu;
    }

}
