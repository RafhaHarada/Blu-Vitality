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
 * @author Edemar
 */
@WebServlet ("/gastosFuncionarios/adicionar")
public class GastosFuncionariosCadastro extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        List<GastosFuncionariosBean> gastoFuncionario = new GastosFuncionariosDAO().obterTodos();
        
        resp.setContentType("text/html;charset=UTF-8");
        resp.sendRedirect("/administrador/financas.jsp");
        
    }
    
  
}
