/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import dao.BolsaDAO;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import model.Bolsa;

/**
 *
 * @author Ederley
 */
@ManagedBean
@SessionScoped
public class BolsaBean implements Serializable {

    private static final long serialVersionUID = 455659950717243338L;
    private Bolsa bolsa = new Bolsa();
    private Bolsa bolsaCategoria = new Bolsa();
    private Bolsa bolsaAtuacao = new Bolsa();
    private Bolsa bolsaPais = new Bolsa();

    private BolsaDAO bolsaDAO = new BolsaDAO();
    private BolsaDAO bolsaCategoriaDAO = new BolsaDAO();
    private BolsaDAO bolsaAtuacaoDAO = new BolsaDAO();
    private BolsaDAO bolsaPaisDAO = new BolsaDAO();

    private List<Bolsa> bolsas = new ArrayList<Bolsa>();
    private List<Bolsa> bolsasCategoria = new ArrayList<Bolsa>();
    private List<Bolsa> bolsasAtuacao = new ArrayList<Bolsa>();
    private List<Bolsa> bolsasPais = new ArrayList<Bolsa>();

    public BolsaBean() {
        bolsas = bolsaDAO.readAll();
        bolsasCategoria = bolsaCategoriaDAO.carregarComboCategoria();
        bolsasAtuacao = bolsaAtuacaoDAO.carregarComboAtuacao();
        bolsasPais = bolsaPaisDAO.carregarComboPais();
    }

    public void atualizarTabela() {
        System.out.println("AQUI: " + bolsa.getCategoria());
        bolsa = (Bolsa) bolsaDAO.read(bolsa.getCategoria(), bolsa.getAtuacao(), bolsa.getPais());
        bolsaDAO.read(bolsa.getCategoria(), bolsa.getAtuacao(), bolsa.getPais());
    }

    public void limpar() {
        bolsa = new Bolsa();
    }

    public Bolsa getBolsa() {
        return bolsa;
    }

    public void setBolsa(Bolsa bolsa) {
        this.bolsa = bolsa;
    }

    public List<Bolsa> getBolsas() {
        return bolsas;
    }

    public void setBolsas(List<Bolsa> bolsas) {
        this.bolsas = bolsas;
    }

    public Bolsa getNullBolsa() {
        return new Bolsa();
    }

    public BolsaDAO getBolsaDAO() {
        return bolsaDAO;
    }

    public void setBolsaDAO(BolsaDAO bolsaDAO) {
        this.bolsaDAO = bolsaDAO;
    }

    //CATEGORIA
    public Bolsa getBolsaCategoria() {
        return bolsaCategoria;
    }

    public void setBolsaCategoria(Bolsa bolsaCategoria) {
        this.bolsaCategoria = bolsaCategoria;
    }

    public BolsaDAO getBolsaCategoriaDAO() {
        return bolsaCategoriaDAO;
    }

    public void setBolsaCategoriaDAO(BolsaDAO bolsaCategoriaDAO) {
        this.bolsaCategoriaDAO = bolsaCategoriaDAO;
    }

    public List<Bolsa> getBolsasCategoria() {
        return bolsasCategoria;
    }

    public void setBolsasCategoria(List<Bolsa> bolsasCategoria) {
        this.bolsasCategoria = bolsasCategoria;
    }

    //ATUAÇÃO
    public Bolsa getBolsaAtuacao() {
        return bolsaAtuacao;
    }

    public void setBolsaAtuacao(Bolsa bolsaAtuacao) {
        this.bolsaAtuacao = bolsaAtuacao;
    }

    public BolsaDAO getBolsaAtuacaoDAO() {
        return bolsaAtuacaoDAO;
    }

    public void setBolsaAtuacaoDAO(BolsaDAO bolsaAtuacaoDAO) {
        this.bolsaAtuacaoDAO = bolsaAtuacaoDAO;
    }

    public List<Bolsa> getBolsasAtuacao() {
        return bolsasAtuacao;
    }

    public void setBolsasAtuacao(List<Bolsa> bolsasAtuacao) {
        this.bolsasAtuacao = bolsasAtuacao;
    }

    //PAÍS
    public Bolsa getBolsaPais() {
        return bolsaPais;
    }

    public void setBolsaPais(Bolsa bolsaPais) {
        this.bolsaPais = bolsaPais;
    }

    public BolsaDAO getBolsaPaisDAO() {
        return bolsaPaisDAO;
    }

    public void setBolsaPaisDAO(BolsaDAO bolsaPaisDAO) {
        this.bolsaPaisDAO = bolsaPaisDAO;
    }

    public List<Bolsa> getBolsasPais() {
        return bolsasPais;
    }

    public void setBolsasPais(List<Bolsa> bolsasPais) {
        this.bolsasPais = bolsasPais;
    }

}
