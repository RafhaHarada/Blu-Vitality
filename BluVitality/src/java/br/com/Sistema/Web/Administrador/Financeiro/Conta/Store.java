/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.Conta;

import br.com.Sistema.Bean.ContaBean;
import br.com.Sistema.DAO.ContaDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
 */
@WebServlet("/conta/store")
public class Store extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ContaBean conta = new ContaBean();
        conta.setEnergia_eletrica(Double.parseDouble(req.getParameter("energiaEletrica")));
        conta.setAgua(Double.parseDouble(req.getParameter("agua")));
        conta.setGas(Double.parseDouble(req.getParameter("gas")));
        conta.setTelefone_e_internet(Double.parseDouble(req.getParameter("telefoneEInternet")));
        conta.setAluguel(Double.parseDouble(req.getParameter("aluguel")));
        conta.setFornecedores(Double.parseDouble(req.getParameter("fornecedores")));

        conta.setId(new ContaDAO().adicionar(conta));
        
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().write("certo");
    }

}
