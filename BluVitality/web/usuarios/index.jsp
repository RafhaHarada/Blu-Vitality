<%-- 
    Document   : index
    Created on : 27/08/2018, 08:14:38
    Author     : Nattana Matos
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

<div class="row container">
    <ul class="tabs tabs-transparent">
        <li class="tab"><a href="#Sobre1" class="active teal-text">Paciente</a></li>
        <li class="tab"><a href="#Sobre2" class="teal-text">Acompanhante</a></li>
        <li class="tab"><a href="#Sobre3" class="teal-text">Observações</a></li>
        <li class="tab"><a href="#Sobre4" class="teal-text">Consultas Anteriores</a></li>
        <li class="tab"><a href="#Sobre5" class="teal-text">Exames Anteriores</a></li>
        <li class="tab"><a href="#Sobre6" class="teal-text">Agendar Consultas/Exames</a></li>
    </ul>
    <div id="Sobre1" class="col s12">

        <ul class="collection col s6">
            <li class="collection-item avatar teal lighten-4">
                <img src="" alt="" class="circle red">
                <span class="nome">Nome:</span>
                <span></span>

            </li>
            <li class="collection-item teal lighten-5">
                <span class="data-nascimento">Data de nascimento:</span>
                <span></span>


            </li>
            <li class="collection-item teal lighten-4">
                <span class="cpf">CPF:</span>
                <span></span>


            </li>
            <li class="collection-item teal lighten-5">
                <span class="rg">RG:</span>
                <span></span>

            </li>
            <li class="collection-item teal lighten-4">
                <span class="naturalidade">Naturalidade:</span>
                <span></span>


            </li>
            <li class="collection-item teal lighten-5">
                <span class="sexo">Sexo:</span>
                <span></span>

            </li>
            <li class="collection-item teal lighten-4">
                <span class="sanguineo">Tipo Sanguíneo:</span>
                <span></span>

            </li>
        </ul>
        <ul class="collection col s6">
            <li class="collection-item teal lighten-4">
                <span class="cidade">Cidade:</span>
                <span> </span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="uf">UF:</span>
                <span> </span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>

            </li>
            <li class="collection-item teal lighten-4">
                <span class="endereco">Endereço</span>
                <span> </span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>

            </li>
            <li class="collection-item teal lighten-5">
                <span class="email">Email:</span>
                <span> </span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>

            </li>
            <li class="collection-item teal lighten-4">
                <span class="telefone">Telefone:</span>
                <span> </span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>

            </li>
            <li class="collection-item teal lighten-5">
                <span class="contato-emergencia">Contato de emergência:</span>
                <span> </span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-4">
                <span class="estado-civil">Estado Civil:</span>
                <span> </span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="convenio">Covenio:</span>
                <span> </span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
        </ul>


        <div class="col s1 right">
            <a class="btn-floating btn cyan pulse right margin-botao"><i class="material-icons">edit</i></a>
        </div>
    </div>
</div>
<div id="Sobre2" class="col s12 container ">

    <nav>
        <div class="nav-wrapper">
            <form>
                <div class="input-field teal lighten-4">
                    <input id="search" type="search" required>
                    <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                    <i class="material-icons">close</i>
                </div>
            </form>
        </div>
    </nav>


</div>
<div id="Sobre3" class="col s12 container white">
    <ul class="collection teal-text teatl lighten-4">
        <ul class="collection with-header">
            <li class="collection-header"><h4>Observações:</h4></li>
            <li class="collection-item"></li>
            <li class="collection-item"></li>
            <li class="collection-item"></li>
            <li class="collection-item"></li>
            <li class="collection-item"></li>
            <p> 
            <ul class="col s1 right">

            </ul>
        </ul>

</div>
<div id="Sobre4" class="col s12 container white">

    <table class="striped teal lighten-4">
        <thead>
            <tr>
                <th>Especialidade</th>
                <th>Médico</th>
                <th>Data</th>
                <th>Hora</th>
                <th>Sala</th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <td>Cardiologico</td>
                <td>Eclair</td>
                <td>30/08/2018</td>
                <td>10:00</td>
                <td>12</td>
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
                <td>Lollipop</td>
                <td>$7.00</td>
                <td>$7.00</td>
            </tr>
            <tr>
                <td>Jonathan</td>
                <td>Lollipop</td>
                <td>$7.00</td>
                <td>$7.00</td>
                <td>$7.00</td>
            </tr>
        <td>Jonathan</td>
        <td>Lollipop</td>
        <td>$7.00</td>
        <td>$7.00</td>
        <td>$7.00</td>
        </tbody>
    </table>
</div>

<div id="Sobre5" class="col s12 container white">

    <table class="striped teal lighten-4">
        <thead>
            <tr>
                <th>Nome do exame</th>
                <th>Dia da coleta</th>
                <th>Dia recebido</th>
                <th>Sala</th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <td>Alvin</td>
                <td>Eclair</td>
                <td>$0.87</td>
                <td>$0.87</td>

            </tr>
            <tr>
                <td>Alan</td>
                <td>Jellybean</td>
                <td>$3.76</td>
                <td>$3.76</td>

            </tr>
            <tr>
                <td>Jonathan</td>
                <td>Lollipop</td>
                <td>$7.00</td>
                <td>$7.00</td>
            </tr>
            <tr>
                <td>Jonathan</td>
                <td>Lollipop</td>
                <td>$7.00</td>
                <td>$7.00</td>
            </tr>
            <tr>
                <td>Jonathan</td>
                <td>Lollipop</td>
                <td>$7.00</td>
                <td>$7.00</td>
            </tr>
        </tbody>
    </table>


    <div id="Sobre6" class="col s12 container white scrollBarOnDiv">

        <div class="card-panel teal lighten-4">
            <span class="teal-text teatl lighten-4 ">Você deseja agendar<span class="red-text">*</span></span>
        </div>

        <p>
            <label>
                <input class="with-gap exameRadio" name="group1" type="radio" />
                <span class="teal-text">Exame</span>
            </label>
        </p>

        <p>
            <label>
                <input class="with-gap consultaRadio" name="group1" type="radio" />
                <span class="teal-text">Consulta</span>
            </label>
        </p>
        <div class="agendarE teal lighten-4">
             <label></label>
  <select class="browser-default">
    <option value="" disabled selected>Agendar Exame</option>
    <option value="1">Option 1</option>
    <option value="2">Option 2</option>
    <option value="3">Option 3</option>
  </select>
            
            </div>
        </div>
        <div class="agendarC lighten-4">
           
            <select class="browser-default">
                <option value="" disabled selected>Agenda Consulta</option>
                <option value="1">Option 1</option>
                <option value="2">Option 2</option>
                <option value="3">Option 3</option>
            </select>


        </div>
    </div>
</div>

<jsp:include page="../model/footer.jsp"/>
