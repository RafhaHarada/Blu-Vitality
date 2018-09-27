<%-- 
    Document   : orcamento
    Created on : 23/09/2018, 19:27:14
    Author     : Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row container">
    <form class="col s12">
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="orcamento" type="text" class="validate">
                <label for="orcamento">Orçamento</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="reserva_imprevistos" type="text" class="validate">
                <label for="reserva_imprevistos">Reserva para imprevistos</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="orcamento_investimentos" type="text" class="validate">
                <label for="orcamento_investimentos">Orçamento para investimentos</label>
            </div>
        </div>
        <a class="waves-effect  btn-small" id="quarto-cadastro-salvar">SALVAR</a>
    </form>
</div>
