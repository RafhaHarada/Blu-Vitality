<%-- 
    Document   : investimentos
    Created on : 23/09/2018, 19:13:30
    Author     : Edemar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row container">
    <form class="col s12">
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="tipo de investimento" id="first_name" type="text" class="validate">
                <label for="tipo">Tipo</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <textarea placeholder="descrição do investimento" id="textarea1" class="materialize-textarea"></textarea>
                <label for="descricao">Descrição</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="first_name" type="text" class="validate">
                <label for="valor">Valor do investimento</label>
            </div>
        </div>
        <a class="waves-effect  btn-small" id="quarto-cadastro-salvar">SALVAR</a>
    </form>
</div>
