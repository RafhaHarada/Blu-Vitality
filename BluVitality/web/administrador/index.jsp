<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     :@Gustavo Rodrigues (gugaaroodrigues@gmail.com) Rafhael Harada

--%>


<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="#Entrar">Login</a></li>
        <li><a href="../">Voltar</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<div class="row">
    <div class="  center" style="margin-top: auto">
        <div class="divider"></div>
        <ul class="tabs tabs-transparent">
            <li class="tab"><a href="#InicioADM" class="active teal-text waves-effect">Bem vindo</a></li>
            <li class="tab"><a href="#listapaciente" class="teal-text waves-effect">Pacientes</a></li>
            <li class="tab"><a href="#lisfuncionarios" class="teal-text waves-effect">Funcionarios</a></li>
        </ul>
        <div class="divider"></div>
        <div id="InicioADM" class="col s12 container">
            <h5>Seja Bem vindo</h5>
            <span class="nome">Gustavo</span>
        </div>
                <a class="waves-effect waves-light btn-large">Button</a>
                <a class="waves-effect waves-light btn-large"><i class="material-icons left">cloud</i>button</a>
                <a class="waves-effect waves-light btn-large"><i class="material-icons right">cloud</i>button</a>
        <div id="listapaciente" class="col s12 scrollBarOnDiv">
            <div class="col s12">
                <%@include file="table-pacientes.jsp" %>   
            </div>
        </div>
        <div id="lisfuncionarios" class="col s12 container">
            <div class="">
                <%@include file="table-funcionarios.jsp" %> 
            </div>
        </div>
    </div>
    <div class="divider"></div>
    <%@include file="../model/footer.jsp" %> 