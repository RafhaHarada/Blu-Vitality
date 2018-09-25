<%-- 
    Document   : financas
    Created on : 27/08/2018, 10:47:48
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../model/validation.jsp" %>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="../" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<!--%@include file="../model/sessionConfirm.jsp" %-->
<div class="row">
    <a href="index.jsp" class="waves-effect waves-light teal lighten-2 btn-small right" id="btnAdm">Voltar</a>
    <div class="" style="margin-top: auto">
        <div class="divider"></div>
        <ul class="tabs tabs-transparent center ">
            <li class="tab"><a href="#InicioADM" class="active red-text waves-effect">Gastos funcionários</a></li>
            <li class="tab"><a href="#listapaciente" class="red-text waves-effect">Contas</a></li>
            <li class="tab"><a href="#lisfuncionarios" class="red-text waves-effect">Gastos gerais</a></li>
            <li class="tab"><a href="#hospitalQuartos" class="red-text waves-effect atualizaTabFunc">Investimentos</a></li>
            <li class="tab"><a href="#hospitalPendencias" class="red-text waves-effect">Orçamento</a></li>
            <li class="tab"><a href="#hospitalEquipamentos" class="red-text waves-effect">Custo E Receita</a></li>
            <li class="tab"><a href="#hospitalEventos" class="red-text waves-effect">Lucro</a></li>
        </ul>
        <div class="divider"></div>
        <div id="InicioADM" class="col s12 container">
            <%@include file="financas/gastos-funcionarios.jsp" %>
            <div class="row" id="div-bemvindo"> 
            </div>
        </div>
    </div>
</div>
<%@include file="../model/footer.jsp" %> 