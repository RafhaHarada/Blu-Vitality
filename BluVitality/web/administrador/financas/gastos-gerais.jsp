<%-- 
    Document   : gastos-gerais
    Created on : 23/09/2018, 19:04:00
    Author     : Edemar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row container">
    <form class="col s12">
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="manutencao_equipamentos" type="text" class="validate">
                <label for="manutencao_equipamentos">Manutenção de equipamentos</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="limpeza" type="text" class="validate">
                <label for="limpeza">Limpeza</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="manutencao_estrutura" type="text" class="validate">
                <label for="manutencao_estrutura">Manutenção da estrutura do prédio</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="alimentacao" type="text" class="validate">
                <label for="alimentacao">Alimentação</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="materiais_de_consumo" type="text" class="validate">
                <label for="materiais_de_consumo">Materiais de consumo</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="medicamentos" type="text" class="validate">
                <label for="medicamentos">Medicamentos</label>
            </div>
        </div>
        <div class="row container">
            <div class="input-field col s6">
                <input placeholder="0,00" id="imprevistos" type="text" class="validate">
                <label for="imprevistos">Imprevistos</label>
            </div>
        </div>
        <a class="waves-effect  btn-small" id="quarto-cadastro-salvar">SALVAR</a>
    </form>
</div>
