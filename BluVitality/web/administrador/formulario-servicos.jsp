<%-- 
    Document   : formulario-pendencias
    Created on : 17/09/2018, 03:27:41
    Author     : Gus
--%>



<form action="seila" method="post" id="validateServicos">
        <label for="servico-cadastro">Nome servi�o:</label>
        <input type="text" id="servico-cadastro" >
        <label for="textarea2">Descri��o</label>
        <textarea id="textarea2" class="materialize-textarea"></textarea>
        <label>Status</label>
        <select class="browser-default" id="servico-cadastro-tipo" required="required">
            <option value=""></option>
            <option value="Urgente">Urgente</option>
            <option value="Semi - Urgente">Semi - Urgente</option>
            <option value="N�o Urgente">N�o Urgente</option>
        </select>
        <a class="waves-effect  btn-small" type="submit" id="servico-cadastro-salvar">SALVAR</a>
    </form>

<div class="red-text"></div>