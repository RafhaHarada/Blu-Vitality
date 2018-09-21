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
        <li><a href="../" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<!--%@include file="../model/sessionConfirm.jsp" %-->
<div class=" row">

    <h5>Seja Bem vindo</h5>
    <a class="waves-effect waves-light red btn-small right" id="btnFinancas">Finaceiro</a>

    <span class="nome">Gustavo</span>
    <div class="" style="margin-top: auto">
        <div class="divider"></div>
        <ul class="tabs tabs-transparent center">
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
            <div class="col s6">
                <div class="row teal lighten-4 center" id="btnacessorapido"> 
                    <h3 class="center" style="font-family: verdana, arial;" >
                        Seja bem vindo
                    </h3> 
                    <div class="row s12 left">
                        <a href="#" class="waves-effect waves-light btn-small " id="acessoarapido1">Financeiro</a>
                        <a href="#" class="waves-effect waves-light btn-small " id="acessoarapido2">Financeiro</a>
                    </div>
                    <a href="#" class="waves-effect waves-light btn-large " id="acessoarapido3">Financeiro</a>
                    <a href="#" class="waves-effect waves-light btn-large " id="acessoarapido4">Funcionarios</a>
                    <a href="#" class="waves-effect waves-light btn-large " id="acessoarapido5">Usuarios</a>
                    <a href="#" class="waves-effect waves-light btn-large " id="acessoarapido6">Estoque</a>
                </div>
            </div>
            <div class="col s6 right">
                <%@include file="table/table-ultimos-servicos.jsp" %>
            </div>
        </div>

        <div id="listapaciente" class="col s12 scrollBarOnDiv container">
            <div class="col s12">
                <%@include file="table/tabela-usuarios.jsp" %>
            </div>
        </div>
        <div id="lisfuncionarios" class="col s12 container">
            <div class="">
                <%@include file="table/tabela-funcionarios.jsp" %> 
            </div>
        </div>
        <div id="hospitalQuartos" class="col s12 container scrollBarOnDiv">
            <div class="col s6">
                <div class="row teal lighten-3"> 
                    <span class="flow-text ">Quartos</span><br>
                    <a class="waves-effect waves-light btn-small right" id="btnRemove">Nova Ala</a>
                    <a href="#" class="waves-effect waves-light btn-small right-align " id="btnAdd">Adicionar</a>
                    <ul class="collapsible">
                        <li>
                            <div class="collapsible-header"><i class="material-icons">filter_drama</i>Adicionar</div>
                            <div class="collapsible-body ">
                                <%@include file="quarto/quarto-formulario-cadastro.jsp"%>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header"><i class="material-icons">place</i>Remover</div>
                            <div class="collapsible-body">
                                <%@include file="quarto/quarto-formulario-remover.jsp"%>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header"><i class="material-icons">whatshot</i>Editar</div>
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