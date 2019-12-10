/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Ederley
 */
public class Bolsa {

    private int id;
    private String nomePrograma;
    private String nomeBolsa;
    private String pais;
    private String parceiro;
    private String dataFinalInscr;
    private String categoria;
    private String atuacao;

    public Bolsa(String nomePrograma, String nomeBolsa, String pais, String parceiro, String dataFinalInscr, String categoria, String atuacao) {
        this.nomePrograma = nomePrograma;
        this.nomeBolsa = nomeBolsa;
        this.pais = pais;
        this.parceiro = parceiro;
        this.dataFinalInscr = dataFinalInscr;
        this.categoria = categoria;
        this.atuacao = atuacao;
    }

    public Bolsa(String categoria, String atuacao, String pais) {
        this.categoria = categoria;
        this.atuacao = atuacao;
        this.pais = pais;
    }

    public Bolsa(String categoria) {
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return "Bolsa [nomePrograma=" + nomePrograma + ", nomeBolsa=" + nomeBolsa + ", pais=" + pais
                + ", parceiro=" + parceiro + ", dataFinalInscr=" + dataFinalInscr + "]";
    }

    public Bolsa() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomePrograma() {
        return nomePrograma;
    }

    public void setNomePrograma(String nomePrograma) {
        this.nomePrograma = nomePrograma;
    }

    public String getNomeBolsa() {
        return nomeBolsa;
    }

    public void setNomeBolsa(String nomeBolsa) {
        this.nomeBolsa = nomeBolsa;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getParceiro() {
        return parceiro;
    }

    public void setParceiro(String parceiro) {
        this.parceiro = parceiro;
    }

    public String getDataFinalInscr() {
        return dataFinalInscr;
    }

    public void setDataFinalInscr(String dataFinalInscr) {
        this.dataFinalInscr = dataFinalInscr;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getAtuacao() {
        return atuacao;
    }

    public void setAtuacao(String atuacao) {
        this.atuacao = atuacao;
    }

}
