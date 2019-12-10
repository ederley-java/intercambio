/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

import bean.BolsaBean;
import dao.BolsaDAO;
import dao.CadastroDAO;
import model.Bolsa;

/**
 *
 * @author Ederley
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        //CadastroDAO cad = new CadastroDAO();
        //cad.conectar();
        Bolsa bm = new Bolsa();
        bm.setCategoria("Mestrado");
        bm.setAtuacao("Comunicação");
        bm.setPais("Holanda");

        System.out.println("AQUI: " + bm.getCategoria() + bm.getAtuacao() + bm.getPais());
        BolsaDAO bdao = new BolsaDAO();
        bdao.read(bm.getCategoria(), bm.getAtuacao(), bm.getPais()).listIterator();
    }
}
