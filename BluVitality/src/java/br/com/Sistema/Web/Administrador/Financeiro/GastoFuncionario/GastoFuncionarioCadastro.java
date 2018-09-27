/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.GastoFuncionario;

import br.com.Sistema.Bean.GastoFuncionarioBean;
import br.com.Sistema.DAO.GastoFuncionarioDAO;
import br.com.Sistema.Web.IndexRedirect;
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
@WebServlet ("/gastoFuncionario/cadastro")
public class GastoFuncionarioCadastro extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IndexRedirect.redirecionarSubpasta(req, resp, "gastoFuncionario", "gastos-funcionarios.jsp");
    }
    
  
}
