/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import dao.CadastroDAO;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import model.Cadastro;

/**
 *
 * @author Ederley
 */
@ManagedBean
@SessionScoped
public class CadastroBean implements Serializable {

    private static final long serialVersionUID = 455659950717243338L;
    private Cadastro cadastro = new Cadastro();
    private CadastroDAO cadastroDAO = new CadastroDAO();
    private List<Cadastro> cadastros = new ArrayList<Cadastro>();

    public CadastroBean() {
        cadastros = cadastroDAO.readAll();
    }

    public void inserir(ActionEvent evt) {
        cadastroDAO.create(cadastro);
        cadastros = cadastroDAO.readAll();
        showMessage("Usuário " + cadastro.getNome() + " criado com sucesso!");
    }

    /*
    public void atualizar() {
        cadastroDAO.update(cadastro);
        cadastros = cadastroDAO.readAll();
        showMessage("Usuário " + cadastro.getNome() + " atualizado com sucesso!");
    }


    public void remover() {
        cadastroDAO.delete(cadastro.getId_cadastro());
        cadastros = cadastroDAO.readAll();
        showMessage("Usuário " + cadastro.getNome() + " removido com sucesso!");
    }
    */

    public void limpar() {
        cadastro = new Cadastro();
    }

    private void showMessage(String summary) {
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage(summary));
    }

    public Cadastro getCadastro() {
        return cadastro;
    }

    public void setCadastro(Cadastro usuario) {
        this.cadastro = usuario;
    }

    public List<Cadastro> geCadastros() {
        return cadastros;
    }

    public void setCadastros(List<Cadastro> usuarios) {
        this.cadastros = cadastros;
    }

    public Cadastro getNullUser() {
        return new Cadastro();
    }
}
