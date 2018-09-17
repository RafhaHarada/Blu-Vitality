<%-- 
    Document   : index
    Created on : 27/08/2018, 08:14:38
    Author     : Nattana Matos
--%>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Op��es</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="../" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

<ul class="tabs tabs-transparent">
    <li class="tab"><a href="#Usuario1" class="active teal-text">Paciente</a></li>
    <li class="tab"><a href="#Usuario2" class="teal-text">Acompanhante</a></li>
    <li class="tab"><a href="#Usuario3" class="teal-text">Observa��es</a></li>
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
                <span class="sanguineo">Tipo Sangu�neo:</span>
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
                <span class="endereco">Endere�o</span>
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
                <span class="contato-emergencia">Contato de emerg�ncia:</span>
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
            <li class="collection-header"><h4>Observa��es:</h4></li>
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
                <th>M�dico</th>
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
        <span class="teal-text teatl lighten-4 ">Voc� deseja agendar<span class="red-text">*</span></span>
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
                        <label for="autocomplete-input">Motivo da consulta (por ex:Dor de cabe�a,tonturas etc...)</label>
                    </div>
                </div>
            </div>
        </div>
        
         <label>Escolha a especialide</label>
  <select class="browser-default">
    <option value="" disabled selected>Especialidades</option>
    <option value="1">Option 1</option>
    <option value="2">Option 2</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
  </select>
           
        <label>Escolha o m�dico</label>
  <select class="browser-default">
    <option value="" disabled selected>Medicos</option>
    <option value="1">Option 1</option>
    <option value="2">Option 2</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
    <option value="3">Option 3</option>
  </select>
           

            <label>Escolha o hor�rio desejado</label>
            <select class="browser-default">
                <option value="" disabled selected>Hor�rios</option>
                <option value="1">Option 1</option>
                <option value="2">Option 2</option>
                <option value="3">Option 3</option>
                <option value="3">Option 3</option>
                <option value="3">Option 3</option>
                <option value="3">Option 3</option>
                <option value="3">Option 3</option>
                <option value="3">Option 3</option>
                <option value="3">Option 3</option>
                <option value="3">Option 3</option>
            </select>
            
            <div class="card-panel">
        <span class="teal-text teatl lighten-4 ">Como deseja sua resposta?<span class="red-text">*</span></span>
    </div>
      
        <form action="#">
    <p>
      <label>
        <input type="checkbox" />
        <span>Telefoe</span>
      </label>
    </p>
    
    <form action="#">
    <p>
      <label>
        <input type="checkbox" />
        <span>Email</span>
      </label>
    </p>
      <!-- Modal Trigger -->
  <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Agendar</a>

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4></h4>
      <p>A disponibilidade de m�dicos e hor�rios est� sujeito a altera��es </p>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-close waves-effect waves-green btn-flat">Concordo</a>
    </div>
  </div>
          
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    </div>

    <jsp:include page="../model/footer.jsp"/>
