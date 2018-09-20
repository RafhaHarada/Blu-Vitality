<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     : @Luana Patricia Duarte 
    @Rafhael

--%>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Op��es</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="/usuario/logout" onclick="signOut();">Sair</a></li>
        <li><a href="/funcionario">Voltar a p�gina anterior</a></li>

    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

M�DICO
<div class="row">
    <div class="">
        <ul class="tabs tabs-transparent center">
            <li class="tab"><a href="#Funcionarios1" class="active teal-text">Dados Pessoais</a></li>
            <li class="tab"><a href="#Funcionarios6" class="teal-text">Observa��es</a></li>
            <li class="tab"><a href="#Funcionarios7" class="teal-text">Anamnese</a></li>
            <li class="tab"><a href="#Funcionarios8" class="teal-text">Localiza��o</a></li>
            <li class="tab"><a href="#Funcionarios9" class="teal-text">Hist�rico Cl�nico</a></li>
        </ul>
        <%@include file="../model/tabConteudo.jsp" %>
        <div id="Funcionarios6" class="col s12 container">
            <div class="row">
                <div class="input-field col s12">
                    <textarea id="textarea2" class="materialize-textarea" data-length="120"></textarea>
                    <label for="textarea2">Textarea</label>
                </div>
                <a class="waves-effect waves-light btn-large" href="#">Salvar</a>
            </div>
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
                    <th>Descri��o</th>
                    <th>M�dico | Especialidade</th>
                    <th>Data</th>
                    <th>Hor�rio</th>
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