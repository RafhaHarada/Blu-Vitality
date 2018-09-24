/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.Contas;

import br.com.Sistema.Bean.ContasBean;
import br.com.Sistema.DAO.ContasDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet("/contas/update")
public class ContasUpdate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ContasBean conta = new ContasBean();
        
        conta.setId(Integer.parseInt(req.getParameter("id")));
        conta.setEnergia_eletrica(Double.parseDouble(req.getParameter("energiaEletrica")));
        conta.setAgua(Double.parseDouble(req.getParameter("agua")));
        conta.setGas(Double.parseDouble(req.getParameter("gas")));
        conta.setTelefone_e_internet(Double.parseDouble(req.getParameter("telefoneEInternet")));
        conta.setAluguel(Double.parseDouble(req.getParameter("aluguel")));
        conta.setFornecedores(Double.parseDouble(req.getParameter("fornecedores")));
        
        new ContasDAO().alterar(conta);
        resp.sendRedirect("/conta/editar?id=" + conta.getId());
    }

}
