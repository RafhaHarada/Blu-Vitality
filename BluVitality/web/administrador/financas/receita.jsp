<%-- 
    Document   : receita
    Created on : 23/09/2018, 19:21:21
    Author     : Edemar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row container">
    <form class="col s12">
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="clientes_particulares" type="text" class="validate">
                <label for="clientes_particulares">Clientes particulares</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="convenio_sus" type="text" class="validate">
                <label for="convenio_sus">Convênio sus</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="outros_convenios" type="text" class="validate">
                <label for="outros_convenios">Outros convênios</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="servicos_a_faturar" type="text" class="validate">
                <label for="servicos_a_faturar">Serviços a faturar</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="diversos" type="text" class="validate">
                <label for="diversos">Diversos</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="adiantamentos_a_terceiros" type="text" class="validate">
                <label for="adiantamentos_a_terceiros">Adiantamentos a terceiros</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="arrecadacoes" type="text" class="validate">
                <label for="arrecadacoes">Arrecadações</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="bens_e_titulos_a_receber" type="text" class="validate">
                <label for="bens_e_titulos_a_receber">Bens e títulos a receber</label>
            </div>
        </div>
        <a class="waves-effect  btn-small" id="quarto-cadastro-salvar">SALVAR</a>
    </form>
</div>
