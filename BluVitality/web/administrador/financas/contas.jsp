<%-- 
    Document   : contas
    Created on : 23/09/2018, 18:53:49
    Author     : Edemar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="row container">
    <form action="/contas/store" method="POST" class="col s12">
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="energia_eletrica" type="text" class="validate">
                <label for="energia_eletrica">Energia elétrica</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="agua" type="text" class="validate">
                <label for="agua">Água</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="gas" type="text" class="validate">
                <label for="gas">Gás</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="telefone_e_internet" type="text" class="validate">
                <label for="telefone_e_internet">Telefone e internet</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="aluguel" type="text" class="validate">
                <label for="aluguel">Aluguél</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="fornecedores" type="text" class="validate">
                <label for="fornecedores">Fornecedores</label>
            </div>
        </div>
        <a class="waves-effect  btn-small" id="conta-salvar">SALVAR</a>
    </form>
</div>
</div>
