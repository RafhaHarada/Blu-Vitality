/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.GastoFuncionario;

import br.com.Sistema.Bean.GastoFuncionarioBean;
import br.com.Sistema.DAO.GastoFuncionarioDAO;
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
@WebServlet("/gastoFuncionario/update")
public class GastoFuncionarioUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GastoFuncionarioBean gastoFuncionario = new GastoFuncionarioBean();

        gastoFuncionario.setId(Integer.parseInt(req.getParameter("id")));
        gastoFuncionario.setSalarioMensal(Double.parseDouble(req.getParameter("salario_mensal")));
        gastoFuncionario.setFeriasAnuaisRemuneradas(Double.parseDouble(req.getParameter("ferias_anuais_remuneradas")));
        gastoFuncionario.setDecimoTerceiroSalario(Double.parseDouble(req.getParameter("decimo_terceiro_salario")));
        gastoFuncionario.setUmTercoSobreFerias(Double.parseDouble(req.getParameter("um_terco_sobre_ferias")));
        gastoFuncionario.setAvisoPrevio(Double.parseDouble(req.getParameter("aviso_previo")));
        gastoFuncionario.setFgts(Double.parseDouble(req.getParameter("fgts")));
        gastoFuncionario.setMultaFgts(Double.parseDouble(req.getParameter("multa_fgts")));
        gastoFuncionario.setInss(Double.parseDouble(req.getParameter("inss")));
        gastoFuncionario.setValeTransporte(Double.parseDouble(req.getParameter("vale_transporte")));
        gastoFuncionario.setValeRefeicao(Double.parseDouble(req.getParameter("vale_refeicao")));

        new GastoFuncionarioDAO().alterar(gastoFuncionario);
        resp.sendRedirect("/gastosFuncionarios/editar?id=" + gastoFuncionario.getId());
    }

}
