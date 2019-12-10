/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexao.ConnectionFactory;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Bolsa;

/**
 *
 * @author Ederley
 */
public class BolsaDAO {

    private final String URL = "jdbc:postgresql://localhost/Integrador";
    private final String NOME = "postgres";
    private final String SENHA = "1704";

    private Connection con;
    private Statement comando;

    public void conectar() {
        try {
            con = ConnectionFactory.conexao(URL, NOME, SENHA,
                    ConnectionFactory.POSTGRES);
            comando = con.createStatement();
            System.out.println("Conectado");
        } catch (ClassNotFoundException e) {
            System.out.println("Erro ao carregar o driver: " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Erro ao conectar: " + e.getMessage());
        }
    }

    public void fechar() {
        try {
            comando.close();
            con.close();
            System.out.println("Desconectado");
        } catch (SQLException e) {
            System.err.println("Erro ao conectar: " + e.getMessage());
        }
    }

    public List<Bolsa> carregarComboCategoria() {
        conectar();
        List<Bolsa> lista = new ArrayList<Bolsa>();
        ResultSet rs;
        Bolsa temp = null;
        try {
            rs = comando.executeQuery("with dados as\n"
                    + "(select 'categoria' as categoria_old, categoria from programas group by categoria\n"
                    + "union\n"
                    + "select 'atuacao' as categoria_old, atuacao as categoria from programas group by atuacao\n"
                    + "union \n"
                    + "select 'pais' as categoria_old, pais as categoria from programas group by pais\n"
                    + "order by categoria asc) select categoria from dados where categoria_old = 'categoria'\n"
                    + "group by 1");
            while (rs.next()) {
                temp = new Bolsa(rs.getString("categoria"));
                lista.add(temp);
            }
            return lista;
        } catch (SQLException e) {
            System.err.println("Erro ao buscar programas e bolsas: " + e.getMessage());
            return null;
        } finally {
            fechar();
        }
    }

    public List<Bolsa> carregarComboAtuacao() {
        conectar();
        List<Bolsa> lista = new ArrayList<Bolsa>();
        ResultSet rs;
        Bolsa temp = null;
        try {
            rs = comando.executeQuery("with dados as\n"
                    + "(select 'categoria' as categoria_old, categoria from programas group by categoria\n"
                    + "union\n"
                    + "select 'atuacao' as categoria_old, atuacao as categoria from programas group by atuacao\n"
                    + "union \n"
                    + "select 'pais' as categoria_old, pais as categoria from programas group by pais\n"
                    + "order by categoria asc) select categoria from dados where categoria_old = 'atuacao'\n"
                    + "group by 1");
            while (rs.next()) {
                temp = new Bolsa(rs.getString("categoria"));
                lista.add(temp);
            }
            return lista;
        } catch (SQLException e) {
            System.err.println("Erro ao buscar programas e bolsas: " + e.getMessage());
            return null;
        } finally {
            fechar();
        }
    }

    public List<Bolsa> carregarComboPais() {
        conectar();
        List<Bolsa> lista = new ArrayList<Bolsa>();
        ResultSet rs;
        Bolsa temp = null;
        try {
            rs = comando.executeQuery("with dados as\n"
                    + "(select 'categoria' as categoria_old, categoria from programas group by categoria\n"
                    + "union\n"
                    + "select 'atuacao' as categoria_old, atuacao as categoria from programas group by atuacao\n"
                    + "union \n"
                    + "select 'pais' as categoria_old, pais as categoria from programas group by pais\n"
                    + "order by categoria asc) select categoria from dados where categoria_old = 'pais'\n"
                    + "group by 1");
            while (rs.next()) {
                temp = new Bolsa(rs.getString("categoria"));
                lista.add(temp);
            }
            return lista;
        } catch (SQLException e) {
            System.err.println("Erro ao buscar programas e bolsas: " + e.getMessage());
            return null;
        } finally {
            fechar();
        }
    }

    public List<Bolsa> read(String categoria, String atuacao, String pais) {
        conectar();
        List<Bolsa> lista = new ArrayList<Bolsa>();
        ResultSet rs;
        Bolsa temp = null;
        try {
            rs = comando.executeQuery("select p.nomeprograma, b.nomebolsa, p.pais, p.parceiro, p.datafinalinscr, p.categoria, p.atuacao\n"
                    + "from programas p\n"
                    + "inner join bolsas b on (b.idbolsa = p.idbolsa)\n"
                    + "where p.categoria = '" + categoria + "' and p.atuacao = '"
                    + atuacao + "' and p.pais = '" + pais + "'\n"
                    + "group by 1, 2, 3, 4, 5, 6, 7\n"
                    + "order by p.nomeprograma asc");
            while (rs.next()) {
                temp = new Bolsa(rs.getString("nomeprograma"), rs.getString("nomebolsa"),
                        rs.getString("pais"), rs.getString("parceiro"), rs.getString("datafinalinscr"), rs.getString("categoria"), rs.getString("atuacao"));
                lista.add(temp);
            }
            lista.add(temp);

        } catch (SQLException e) {
            System.err.println("Erro ao buscar usuário: " + e.getMessage());
        } finally {
            fechar();
        }
        return null;
    }

    public List<Bolsa> readAll() {
        conectar();
        List<Bolsa> lista = new ArrayList<Bolsa>();
        ResultSet rs;
        Bolsa temp = null;
        try {
            rs = comando.executeQuery("select p.nomeprograma, b.nomebolsa, p.pais, p.parceiro, p.datafinalinscr, p.categoria, p.atuacao from programas p inner join bolsas b on (b.idbolsa = p.idbolsa) group by 1, 2, 3, 4, 5, 6, 7 order by p.nomeprograma asc");
            while (rs.next()) {
                temp = new Bolsa(rs.getString("nomeprograma"), rs.getString("nomebolsa"),
                        rs.getString("pais"), rs.getString("parceiro"), rs.getString("datafinalinscr"), rs.getString("categoria"), rs.getString("atuacao"));
                lista.add(temp);
            }
            return lista;
        } catch (SQLException e) {
            System.err.println("Erro ao buscar programas e bolsas: " + e.getMessage());
            return null;
        } finally {
            fechar();
        }
    }

}
