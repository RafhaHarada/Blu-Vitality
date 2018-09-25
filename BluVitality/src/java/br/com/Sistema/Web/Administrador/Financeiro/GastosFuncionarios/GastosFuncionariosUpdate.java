/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.GastosFuncionarios;

import br.com.Sistema.Bean.GastosFuncionariosBean;
import br.com.Sistema.DAO.GastosFuncionariosDAO;
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
@WebServlet("/gastosFuncionarios/update")
public class GastosFuncionariosUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GastosFuncionariosBean gastoFuncionario = new GastosFuncionariosBean();

        gastoFuncionario.setId(Integer.parseInt(req.getParameter("id")));
        gastoFuncionario.setSalario_mensal(Double.parseDouble(req.getParameter("salarioMensal")));
        gastoFuncionario.setFerias_anuais_remuneradas(Double.parseDouble(req.getParameter("feriasAnuaisRemuneradas")));
        gastoFuncionario.setDecimo_terceiro_salario(Double.parseDouble(req.getParameter("decimoTerceiroSalario")));
        gastoFuncionario.setUm_terco_sobre_ferias(Double.parseDouble(req.getParameter("umTercoSobreFerias")));
        gastoFuncionario.setAviso_previo(Double.parseDouble(req.getParameter("avisoPrevio")));
        gastoFuncionario.setFgts(Double.parseDouble(req.getParameter("fgts")));
        gastoFuncionario.setMulta_fgts(Double.parseDouble(req.getParameter("multaFgts")));
        gastoFuncionario.setInss(Double.parseDouble(req.getParameter("inss")));
        gastoFuncionario.setVale_transporte(Double.parseDouble(req.getParameter("valeTransporte")));
        gastoFuncionario.setVale_refeicao(Double.parseDouble(req.getParameter("valeRefeicao")));

        new GastosFuncionariosDAO().alterar(gastoFuncionario);
        resp.sendRedirect("/gastosFuncionarios/editar?id=" + gastoFuncionario.getId());
    }

}
