/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.Conta;

import br.com.Sistema.Bean.ContaBean;
import br.com.Sistema.DAO.ContaDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
 */
@WebServlet("/conta/adicionar")
public class Cadastro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ContaBean> conta = new ContaDAO().obterTodos();

        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("../administrador/financas.jsp").include(req, resp);
    }

}
