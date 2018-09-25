/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.GastosFuncionarios;

import br.com.Sistema.Bean.GastosFuncionariosBean;
import br.com.Sistema.DAO.GastosFuncionariosDAO;
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
@WebServlet("/GastosFuncionariosEditar/editar")
public class GastosFuncionariosEditar extends HttpServlet{
      @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
    GastosFuncionariosBean gastoFuncionario = new GastosFuncionariosDAO().obterPeloId(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("gastoFuncioario", gastoFuncionario);
        
        req.getRequestDispatcher("/financas/gastos-funcionarios.jsp").include(req, resp);
    }
}