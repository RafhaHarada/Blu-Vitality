<%-- 
    Document   : receita
    Created on : 17/09/2018, 10:19:10
    Author     : Cidmar
--%>

<%@page import="br.com.Sistema.Bean.GastosFuncionariosBean"%>
<%@page import="br.com.Sistema.DAO.GastosFuncionariosDAO"%>

<form action="/gastosFuncionarios/store" id="validateGastosFuncionarios" class="col s12">
    <div class="row container">
        <div class="input-field col s6">
            <label for="salario_mensal">Salário Mensal</label>
            <input placeholder="0,00" id="salario_mensal" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="ferias_anuais_remuneradas">Férias anuais remuneradas</label>
            <input placeholder="0,00" id="ferias_anuais_remuneradas" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="um_terco_sobre_ferias">Um terço sobre férias</label>
            <input placeholder="0,00" id="um_terco_sobre_ferias" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="decimo_terceiro_salario">13º salário</label>
            <input placeholder="0,00" id="decimo_terceiro_salario" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="aviso_previo">Aviso prévio</label>
            <input placeholder="0,00" id="aviso_previo" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="fgts">FGTS sobre salario mensal</label>
            <input placeholder="0,00" id="fgts" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="multa_fgts">Multa FGTS</label>
            <input placeholder="0,00" id="multa_fgts" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="inss_sobre_salario">INSS</label>
            <input placeholder="0,00" id="first_name" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="inss">INSS</label>
            <input placeholder="0,00" id="inss" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="vale_transporte">Vale transporte</label>
            <input placeholder="0,00" id="first_name" type="text" class="validate">
        </div>
    </div>
    <div class="row container">
        <div class="input-field col s6">
            <label for="vale_refeicao">Vale refeiçao</label>
            <input placeholder="0,00" id="first_name" type="text" class="validate">
        </div>
    </div>
    <div class="row col s12 center input-field">
        <input type="submit" class="btn col s4" value="Cadastrar">
    </div>

</form>