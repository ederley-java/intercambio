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
public class Cadastro {

    private String nome;
    private String email;
    private String login;
    private String senha;
    private String categoria;

    public Cadastro(String nome, String email, String login, String senha, String categoria) {
        this.nome = nome;
        this.email = email;
        this.login = login;
        this.senha = senha;
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return "Cadastro [nome=" + nome
                + ", email=" + email + ", login=" + login + ", senha" + senha
                + ", categoria" + categoria + "]";
    }

    public Cadastro() {

    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

        public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }
    
    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
     

}
