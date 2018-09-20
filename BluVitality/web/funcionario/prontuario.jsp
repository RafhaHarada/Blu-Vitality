<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     : @Luana Patricia Duarte 
    @Rafhael

--%>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="/usuario/logout" onclick="signOut();">Sair</a></li>
        <li><a href="/funcionario">Voltar a página anterior</a></li>

    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

FUNCIONARIO PRONTUARIO
<div class="row">
    <div class="">
        <ul class="tabs tabs-transparent center">
            <li class="tab"><a href="#Funcionarios1" class="active teal-text">Dados Pessoais</a></li>
            <li class="tab"><a href="#Funcionarios2" class="teal-text">Anamnese</a></li>
            <li class="tab"><a href="#Funcionarios3" class="teal-text">Localização</a></li>
            <li class="tab"><a href="#Funcionarios4" class="teal-text">Histórico Clínico</a></li>
        </ul>
        <%@include file="../model/tabConteudo.jsp" %>
        <div id="Funcionarios2" class="scrollBarOnDiv">
            <div class="valign-wrapper">
                <h5>This should be vertically aligned</h5>
            </div>
        </div>
        <div id="Funcionarios3" class="col s12 container">   
        </div>

        <div id="Funcionarios4" class="col s12 container">
            <div id="Usuario5" class="col s12 container white">

                <table class="striped teal lighten-4">
                    <thead>
                        <tr>
                            <th>Descrição</th>
                            <th>Médico | Especialidade</th>
                            <th>Data</th>
                            <th>Horário</th>
                            <th>Status</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                            <td>$0.87</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                            <td>$3.76</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                            <td>$7.00</td>
                            <td>$7.00</td>
                        </tr>
                    </tbody>
                </table>                                   
            </div>
        </div>            
    </div>
</div>

<jsp:include page="../model/footer.jsp"/>