<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     :@Gustavo Rodrigues (gugaaroodrigues@gmail.com) Rafhael Harada

--%>

<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Op��es</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="../" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<%@include file="../model/sessionConfirm.jsp" %>
<div class=" row">

    <h5>Seja Bem vindo</h5>
    <a class="waves-effect waves-light btn-small right" id="btnFinancas">button</a>

    <span class="nome">Gustavo</span>
    <div class="" style="margin-top: auto">
        <div class="divider"></div>
        <ul class="tabs tabs-transparent">
            <li class="tab"><a href="#InicioADM" class="active teal-text waves-effect">Bem vindo</a></li>
            <li class="tab"><a href="#listapaciente" class="teal-text waves-effect">Pacientes</a></li>
            <li class="tab"><a href="#lisfuncionarios" class="teal-text waves-effect">Funcionarios</a></li>
            <li class="tab"><a href="#hospitalQuartos" class="teal-text waves-effect">Quarto</a></li>
            <li class="tab"><a href="#hospitalConfig" class="teal-text waves-effect">Configura��o</a></li>
            <li class="tab"><a href="#hospitalEquipamentos" class="teal-text waves-effect">Equipamentos</a></li>
            <li class="tab"><a href="#hospitalEventos" class="teal-text waves-effect">Eventos</a></li>
        </ul>
        <div class="divider"></div>
        <div id="InicioADM" class="col s12 container">

        </div>

        <div id="listapaciente" class="col s12 scrollBarOnDiv container">
            <div class="col s12">
                <%@include file="table-pacientes.jsp" %>   
            </div>
        </div>
        <div id="lisfuncionarios" class="col s12 container">
            <div class="">
                <%@include file="table-funcionarios.jsp" %> 
            </div>
        </div>
        <div id="hospitalQuartos" class="col s12 container">
            <%@include file="ListarQuartos.jsp" %>
           <a class="waves-effect waves-light btn-small right" id="btnAdd">Adicionar</a>
           <a class="waves-effect waves-light btn-small right" id="btnRemove">Remover</a>
        </div>
        <div id="hospitalConfig" class="col s12 container">
            <div class="">

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