package com.elit2.app.model;

public class Conteudo {
    private int cd_conteudo;
    private int tbProfessor_cd_professor;
    private int tbProfessor_cd_cpf_professor;
    private int tbImagem_cd_imagem;
    private String nm_conteudo;
    private String ds_conteudo;
    private int cd_status;

    public Conteudo(int cd_conteudo, int tbProfessor_cd_professor, int tbProfessor_cd_cpf_professor, int tbImagem_cd_imagem, String nm_conteudo, String ds_conteudo, int cd_status) {
        this.cd_conteudo = cd_conteudo;
        this.tbProfessor_cd_professor = tbProfessor_cd_professor;
        this.tbProfessor_cd_cpf_professor = tbProfessor_cd_cpf_professor;
        this.tbImagem_cd_imagem = tbImagem_cd_imagem;
        this.nm_conteudo = nm_conteudo;
        this.ds_conteudo = ds_conteudo;
        this.cd_status = cd_status;
    }

    public void setCd_conteudo(int cd_conteudo) {
        this.cd_conteudo = cd_conteudo;
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

    public void setNm_conteudo(String nm_conteudo) {
        this.nm_conteudo = nm_conteudo;
    }

    public void setDs_conteudo(String ds_conteudo) {
        this.ds_conteudo = ds_conteudo;
    }

    public void setCd_status(int cd_status) {
        this.cd_status = cd_status;
    }

    public int getCd_conteudo() {
        return cd_conteudo;
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
        return nm_conteudo;
    }

    public String getDs_conteudo() {
        return ds_conteudo;
    }

    public int getCd_status() {
        return cd_status;
    }

   

    
}

