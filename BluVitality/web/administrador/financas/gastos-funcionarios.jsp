<%-- 
    Document   : receita
    Created on : 17/09/2018, 10:19:10
    Author     : Cidmar
--%>

<%@page import="br.com.Sistema.Bean.GastosFuncionariosBean"%>
<%@page import="br.com.Sistema.DAO.GastosFuncionariosDAO"%>

<div class="row container">
    <form class="col s12">
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="salario_mensal">Sal�rio Mensal</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="ferias_anuais_remuneradas">F�rias anuais remuneradas</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="um_terco_sobre_ferias">Um ter�o sobre f�rias</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="decimo_terceiro_salario">13� sal�rio</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="aviso_previo">Aviso pr�vio</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="fgts_sobre_salario_mensal">FGTS sobre salario mensal</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="fgts_sobre_decimo_terceiro_aviso_previo_ferias">FGTS sobre decimo terceiro salario</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="multa_fgts">Multa FGTS</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="ferias_sobre_aviso_previo">F�rias sobre aviso pr�vio</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="decimo_terceiro_sobre_aviso_previo">13� salario sobre aviso pr�vio</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="um_terco_ferias_sobre_aviso_previo">1/3 f�rias sobre aviso previo</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="fgts_sobre_recisao">FGTS sobre recis�o</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="inss_sobre_salario">INSS</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="inss_sobre_ferias_e_decimo_terceiro">INSS 13�</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="indenizacao_um_dia_de_salario">Indeniza�ao um dia de salario</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="vale_transporte">Vale transporte</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="vale_refeicao">Vale refei�ao</label>
            </div>
        </div>
         <div class="row col s12 center input-field">
            <input type="submit" class="btn col s4" value="Cadastrar"><a class="waves-effect  btn-small" id="quarto-cadastro-salvar">SALVAR</a>
        </div>
        
    </form>
</div>