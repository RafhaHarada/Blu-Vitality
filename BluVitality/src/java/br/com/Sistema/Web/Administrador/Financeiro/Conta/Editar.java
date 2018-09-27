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
@WebServlet ("/conta/editar")
public class Editar extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
    ContaBean conta = new ContaDAO().obterPeloId(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("gastoFuncioario", conta);
        
        req.getRequestDispatcher("/financas/contas.jsp").include(req, resp);
    }
}
