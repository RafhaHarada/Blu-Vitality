<%-- 
    Document   : index
    Created on : 27/08/2018, 08:14:38
    Author     : Nattana Matos
--%>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="../" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

<ul class="tabs tabs-transparent">
    <li class="tab"><a href="#Usuario1" class="active teal-text">Paciente</a></li>
    <li class="tab"><a href="#Usuario2" class="teal-text">Acompanhante</a></li>
    <li class="tab"><a href="#Usuario3" class="teal-text">Observações</a></li>
    <li class="tab"><a href="#Usuario4" class="teal-text">Consultas Anteriores</a></li>
    <li class="tab"><a href="#Usuario5" class="teal-text">Exames Anteriores</a></li>
    <li class="tab"><a href="#Usuario6" class="teal-text">Agendar Consultas/Exames</a></li>
</ul>
<div id="Usuario1" class="col s12">
    <div class="row">
        <ul class="collection col s6">
            <li class="collection-item avatar teal lighten-4">
                <img src="" alt="" class="circle red">
                <span class="nome">Nome:</span>
                <span><%=usuario.getNome()%></span>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="data-nascimento">Data de nascimento:</span>
                <span>
                    <% String dataEn[] = usuario.getData_nascimento().toString().split("-");
                        String dataBr = dataEn[2] + "/" + dataEn[1] + "/" + dataEn[0];
                    %>
                    <%=dataBr%>
                </span>
            </li>
            <li class="collection-item teal lighten-4">
                <span class="cpf">CPF:</span>
                <span><%=usuario.getCpf()%></span>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="rg">RG:</span>
                <span><%=usuario.getRg()%></span>
            </li>
            <li class="collection-item teal lighten-4">
                <span class="naturalidade">Naturalidade:</span>
                <span><%=usuario.getNaturalidade()%></span>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="sexo">Sexo:</span>
                <span><%=usuario.getSexo()%></span>
            </li>
            <li class="collection-item teal lighten-4">
                <span class="sanguineo">Tipo Sanguíneo:</span>
                <span><%=usuario.getTipo_sanguineo()%></span>
            </li>
        </ul>
        <ul class="collection col s6">
            <li class="collection-item teal lighten-4">
                <span class="cidade">Cidade:</span>
                <span><%=usuario.getCidade()%></span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="uf">UF:</span>
                <span><%=usuario.getUf()%></span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-4">
                <span class="endereco">Endereço</span>
                <span><%=usuario.getEndereco()%></span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="email">Email:</span>
                <span><%=usuario.getEmail()%></span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-4">
                <span class="telefone">Telefone:</span>
                <span><%=usuario.getTelefone()%></span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="contato-emergencia">Contato de emergência:</span>
                <span><%=usuario.getContato_emergencia()%></span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-4">
                <span class="estado-civil">Estado Civil:</span>
                <span><%=usuario.getEstado_civil()%></span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
            <li class="collection-item teal lighten-5">
                <span class="convenio">Covenio:</span>
                <span><%=usuario.getConvenio()%></span>
                <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
            </li>
        </ul>
        <div class="col s1 right">
            <a class="btn-floating btn cyan pulse right margin-botao"><i class="material-icons">edit</i></a>
        </div>
    </div>
</div>
<div id="Usuario2" class="col s12 container ">
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
<div id="Usuario3" class="col s12 container white">
    <ul class="collection teal-text teatl lighten-4">
        <ul class="collection with-header">
            <li class="collection-header"><h4>Observações:</h4></li>
            <li class="collection-item"></li>
            <li class="collection-item"></li>
            <li class="collection-item"></li>
            <li class="collection-item"></li>
            <li class="collection-item"></li>
        </ul>
    </ul>
</div>
<div id="Usuario4" class="col s12 container white">
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
<div id="Usuario5" class="col s12 container white">
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
</div>
<div id="Usuario6" class="col s12 container white scrollBarOnDiv">
    <div class="card-panel teal lighten-4">
        <span class="teal-text teatl lighten-4 ">Você deseja agendar<span class="red-text">*</span></span>
    </div>
    <div>
        <label>
            <input class="with-gap exameRadio" name="group1" type="radio" />
            <span class="teal-text">Exame</span>
        </label>
    </div>

    <div>
        <label>
            <input class="with-gap consultaRadio" name="group1" type="radio" />
            <span class="teal-text">Consulta</span>
        </label>
    </div>

    <div class="agendarC container">
        <div class="row">
            <div class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">textsms</i>
                        <input type="text" id="autocomplete-input" class="autocomplete">
                        <label for="autocomplete-input">Motivo da consulta</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="input-field col s12">
            <select>
                <option value="" disabled selected>Especialidades</option>
                <option value="1">Clínico Geral </option>
                <option value="2">Cardiologista</option>
                <option value="3">Endocrinologista </option>
                <option value="4">Ginecologista </option>
                <option value="5">Oftamologista </option>
                <option value="6">Ortopedico </option>
                <option value="7">Otorrino </option>
                <option value="8">Pediatra </option>
                <option value="9">Psiquiatra </option>

            </select>
            <label></label>
        </div>
        <div class="input-field col s12">
            <select>
                <option value="" disabled selected>Médicos</option>
                <option value="1">Dr:</option>
                <option value="2">Dr:</option>
                <option value="3">Dr:Nattana Alves Matos </option>
                <option value="4">Dr:Luana Patricia Duarte</option>
                <option value="5">Dr:Cidmar Pereira da Silva</option>
                <option value="6">Dr:Gustavo Rodrigues</option>
                <option value="7">Dr:Rafael Alipio Harada</option>
                <option value="8">Dr: </option>
                <option value="9">Dr: </option>

            </select>
            <label></label>
        </div>
        <input type="Data de preferencia" class="datepicker">
        <div class="input-field col s12">
            <select>
                <option value="" disabled selected>Horario de preferencia</option>
                <option value="1">8:00AM</option>
                <option value="2">8:30AM</option>
                <option value="3">9:00AM</option>
                <option value="4">9:30AM</option>
                <option value="5">10:00AM</option>
                <option value="6">10:30AM</option>
                <option value="7">11:00AM</option>
                <option value="8">11:30AM</option>
                <option value="9">1:30PM</option>
                <option value="10">2:00PM</option>
                <option value="11">2:30PM</option>
                <option value="12">3:00PM</option>
                <option value="13">3:30PM</option>
                <option value="14">4:00PM</option>
                <option value="15">4:30PM</option>
                <option value="16">5:00PM</option>
            </select>
            <label></label>
        </div>
        

    </div>
</div>

<jsp:include page="../model/footer.jsp"/>
