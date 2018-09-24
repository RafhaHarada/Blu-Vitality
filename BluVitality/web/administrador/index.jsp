<%-- 
   Document   : index (administrador)
   Created on : 26/08/2018, 17:47:02
   Author     : @Gustavo Rodrigues (gugaaroodrigues@gmail.com)
                @Rafael Alipio Harada (rafhaharada@gmail.com)

--%>
<%@include file="../model/validation.jsp" %>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="/usuario/logout" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<!--%@include file="../model/sessionConfirm.jsp" %-->
<div class=" row">

    <a href="financas.jsp" class="waves-effect waves-light red btn-small right" id="btnFinancas">Financeiro</a>
    <div class="" style="margin-top: auto">
        <div class="divider"></div>
        <ul class="tabs tabs-transparent center ">
            <li class="tab"><a href="#InicioADM" class="active teal-text waves-effect">Bem vindo</a></li>
            <li class="tab"><a href="#listapaciente" class="teal-text waves-effect">Pacientes</a></li>
            <li class="tab"><a href="#lisfuncionarios" class="teal-text waves-effect">Funcionarios</a></li>
            <li class="tab"><a href="#hospitalQuartos" class="teal-text waves-effect atualizaTabFunc">Quarto</a></li>
            <li class="tab"><a href="#hospitalPendencias" class="teal-text waves-effect">Pendências</a></li>
            <li class="tab"><a href="#hospitalEquipamentos" class="teal-text waves-effect">Equipamentos</a></li>
            <li class="tab"><a href="#hospitalEventos" class="teal-text waves-effect">Eventos</a></li>
        </ul>
        <div class="divider"></div>
        <div id="InicioADM" class="col s12 container">
            <div class="row" id="div-bemvindo"> 
                <%@include file="table/table-ultimos-servicos.jsp" %>
                </div>
        </div>

        <div id="listapaciente" class="col s12 scrollBarOnDiv container">
                <%@include file="table/tabela-usuarios.jsp" %>
        </div>
        <div id="lisfuncionarios" class="col s12 container">
            <div class="">
                <a href="/administrador/cadastro-funcionario.jsp" target="_blank" class="btn-small" id="btn-cadastrar">Adicionar</a>
                <%@include file="table/tabela-funcionarios.jsp" %> 
            </div>
        </div>
        <div id="hospitalQuartos" class="col s12 container scrollBarOnDiv">
            <div class="col s6">
                <div class="row "> 
                    <span class="flow-text ">Quartos</span><br>
                    <a class="waves-effect waves-light btn-small right" id="btnRemove">Nova Ala</a>
                    <a href="#" class="waves-effect waves-light btn-small right-align " id="btnAdd">Adicionar</a>
                    <ul class="collapsible">
                        <li>
                            <div class="collapsible-header"><i class="material-icons">add</i>Adicionar</div>
                            <div class="collapsible-body " id="add-quarto">
                                <%@include file="quarto/quarto-formulario-cadastro.jsp"%>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header"><i class="material-icons">delete</i>Remover</div>
                            <div class="collapsible-body">
                                <%@include file="quarto/quarto-formulario-remover.jsp"%>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header"><i class="material-icons">edit</i>Editar</div>
                            <div class="collapsible-body">
                                <%@include file="quarto/quarto-formulario-quarentena.jsp"%>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col s6 right">
                <%@include file="table/table-quartos.jsp" %>
            </div>
        </div>
        <div id="hospitalPendencias" class="col s12 container">
            <div class=" row-border col s12 m6">
                <%@include file="formulario-pendencias.jsp"%>

            </div>
        </div>
        <div id="hospitalEquipamentos" class="col s12 container">
            <div class="">

            </div>
        </div>
        <div id="hospitalEventos" class="col s12 container">
            <div class="">

            </div>
        </div>
    </div>
</div>
<!--<div id="loading" style="display: block">
    <i class="material-icons right ld ld-cycle" id="loading">loop</i>
</div>-->
<%@include file="../model/footer.jsp" %> 