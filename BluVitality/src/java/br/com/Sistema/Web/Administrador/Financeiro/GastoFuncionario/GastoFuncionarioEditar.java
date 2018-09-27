/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.GastoFuncionario;

import br.com.Sistema.Bean.GastoFuncionarioBean;
import br.com.Sistema.DAO.GastoFuncionarioDAO;
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
@WebServlet("/gastoFuncionario/editar")
public class GastoFuncionarioEditar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        GastoFuncionarioBean gastoFuncionario = new GastoFuncionarioDAO().obterPeloId(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("gastoFuncionario", gastoFuncionario);

        req.getRequestDispatcher("/financas/gastos-funcionarios.jsp").include(req, resp);
    }
}
