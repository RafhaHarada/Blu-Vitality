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

<div class="row">
    <ul class="tabs tabs-transparent center">
        <li class="tab"><a href="#Funcionarios10" class="active teal-text">Dados Pessoais</a></li>
        <li class="tab"><a href="#Funcionarios6" class="teal-text">Observações</a></li>
        <li class="tab"><a href="#Funcionarios7" class="teal-text">Anamnese</a></li>
        <li class="tab"><a href="#Funcionarios8" class="teal-text">Localização</a></li>
        <li class="tab"><a href="#Funcionarios9" class="teal-text">Histórico Clínico</a></li>
    </ul>
    <%@include file="../model/tabsCargos/paciente.jsp" %>
    <div id="Funcionarios6" class="col s12 container">
        <div class="row">
            <div class="input-field col s12">
                <textarea id="textarea2" class="materialize-textarea" data-length="120"></textarea>
                <label for="textarea2">Textarea</label>
            </div>
            <a class="waves-effect waves-light btn-large" href="#">Salvar</a>
        </div>
    </div>
    <div id="Funcionarios7" class="col s12 container">   
    </div>
    <div id="Funcionarios8" class="col s12 container">   
    </div>
    <div id="Funcionarios9" class="col s12 container">
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
<jsp:include page="../model/footer.jsp"/>