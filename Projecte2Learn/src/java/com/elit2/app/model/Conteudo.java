package com.elit2.app.model;

public class Conteudo {
    private int cd_cont;
    private int tbProfessor_cd_professor;
    private int tbProfessor_cd_cpf_professor;
    private int tbImagem_cd_imagem;
    private String nm_cont;
    private String ds_cont;
    private int cd_status;

    public Conteudo(int cd_cont, int tbProfessor_cd_professor, int tbProfessor_cd_cpf_professor, int tbImagem_cd_imagem, String nm_cont, String ds_cont, int cd_status) {
        this.cd_cont = cd_cont;
        this.tbProfessor_cd_professor = tbProfessor_cd_professor;
        this.tbProfessor_cd_cpf_professor = tbProfessor_cd_cpf_professor;
        this.tbImagem_cd_imagem = tbImagem_cd_imagem;
        this.nm_cont = nm_cont;
        this.ds_cont = ds_cont;
        this.cd_status = cd_status;
    }

    public void setCd_conteudo(int cd_cont) {
        this.cd_cont = cd_cont;
    }

    public void setTbProfessor_cd_professor(int tbProfessor_cd_professor) {
        this.tbProfessor_cd_professor = tbProfessor_cd_professor;
    }

    public void setTbProfessor_cd_cpf_professor(int tbProfessor_cd_cpf_professor) {
        this.tbProfessor_cd_cpf_professor = tbProfessor_cd_cpf_professor;
    }

    public void setTbImagem_cd_imagem(int tbImagem_cd_imagem) {
        this.tbImagem_cd_imagem = tbImagem_cd_imagem;
    }

    public void setNm_conteudo(String nm_cont) {
        this.nm_cont = nm_cont;
    }

    public void setDs_conteudo(String ds_cont) {
        this.ds_cont = ds_cont;
    }

    public void setCd_status(int cd_status) {
        this.cd_status = cd_status;
    }

    public int getCd_conteudo() {
        return cd_cont;
    }

    public int getTbProfessor_cd_professor() {
        return tbProfessor_cd_professor;
    }

    public int getTbProfessor_cd_cpf_professor() {
        return tbProfessor_cd_cpf_professor;
    }

    public int getTbImagem_cd_imagem() {
        return tbImagem_cd_imagem;
    }

    public String getNm_conteudo() {
        return nm_cont;
    }

    public String getDs_conteudo() {
        return ds_cont;
    }

    public int getCd_status() {
        return cd_status;
    }

   

    
}

