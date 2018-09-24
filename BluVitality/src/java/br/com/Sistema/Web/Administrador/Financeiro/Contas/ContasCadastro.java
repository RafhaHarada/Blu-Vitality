/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.Contas;

import br.com.Sistema.Bean.ContasBean;
import br.com.Sistema.DAO.ContasDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet("/contas/adicionar")
public class ContasCadastro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ContasBean> conta = new ContasDAO().obterTodos();

        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("../administrador/financas.jsp").include(req, resp);
    }

}
