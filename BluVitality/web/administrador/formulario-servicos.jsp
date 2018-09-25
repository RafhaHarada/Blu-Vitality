<%-- 
    Document   : formulario-pendencias
    Created on : 17/09/2018, 03:27:41
    Author     : Gus
--%>



<form action="seila" method="post" id="validateServicos">
        <label for="Nome">Nome serviço:</label>
        <input type="text" name="nome" id="servicocadastro" >
        <label for="textarea2">Descrição</label>
        <textarea id="textarea2" class="materialize-textarea"></textarea>
        <label>Status</label>
        <select class="browser-default" id="servicocadastrotipo" name="tipo" required="required">
            <option value=""></option>
            <option value="URGENTE">Urgente</option>
            <option value="Semi - Urgente">Semi - Urgente</option>
            <option value="Não Urgente">Não Urgente</option>
        </select>
        <a class="waves-effect  btn-small" type="submit" id="servico-cadastro-salvar">SALVAR</a>
    </form>

<div class="red-text"></div>