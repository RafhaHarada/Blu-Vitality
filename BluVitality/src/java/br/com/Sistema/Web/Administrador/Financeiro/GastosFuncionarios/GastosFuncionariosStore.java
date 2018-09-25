/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Web.Administrador.Financeiro.GastosFuncionarios;

import br.com.Sistema.Bean.GastosFuncionariosBean;
import br.com.Sistema.Bean.QuartoBean;
import br.com.Sistema.DAO.GastosFuncionariosDAO;
import br.com.Sistema.DAO.QuartoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Edemar
 */
@WebServlet("/gastosFuncionarios/store")
public class GastosFuncionariosStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        GastosFuncionariosBean gastoFuncionario = new GastosFuncionariosBean();
        gastoFuncionario.setSalario_mensal(Double.parseDouble(req.getParameter("salarioMensal")));
        gastoFuncionario.setFerias_anuais_remuneradas(Double.parseDouble(req.getParameter("feriasAnuaisRemuneradas")));
        gastoFuncionario.setUm_terco_sobre_ferias(Double.parseDouble(req.getParameter("umTercoSobreFerias")));
        gastoFuncionario.setDecimo_terceiro_salario(Double.parseDouble(req.getParameter("decimoTerceiroSalario")));
        gastoFuncionario.setAviso_previo(Double.parseDouble(req.getParameter("avisoPrevio")));
        gastoFuncionario.setFgts(Double.parseDouble(req.getParameter("fgts")));
        gastoFuncionario.setInss(Double.parseDouble(req.getParameter("inss")));
        gastoFuncionario.setMulta_fgts(Double.parseDouble(req.getParameter("multaFgts")));
        gastoFuncionario.setVale_transporte(Double.parseDouble(req.getParameter("valeTransporte")));
        gastoFuncionario.setVale_refeicao(Double.parseDouble(req.getParameter("valeRefeicao")));

        gastoFuncionario.setId(new GastosFuncionariosDAO().adicionar(gastoFuncionario));

        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().write("certo");

    }

}