<%-- 
    Document   : index (usuario)
    Created on : 27/08/2018, 08:14:38
    Author     : @Nattana Matos
                 @Rafael Alipio Harada (rafhaharada@gmail.com)
--%>
<%@page import="br.com.Sistema.Bean.QuartoBean"%>
<%@page import="br.com.Sistema.DAO.QuartoDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="br.com.Sistema.DAO.ExpedicaoDAO"%>
<%@page import="br.com.Sistema.Bean.ExpedicaoBean"%>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Op��es</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="/usuario/logout" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

<ul class="tabs tabs-transparent">
    <li class="tab"><a href="#Usuario1" class="active teal-text">Paciente</a></li>
    <li class="tab"><a href="#Usuario2" class="teal-text">Acompanhante</a></li>
    <li class="tab"><a href="#Usuario3" class="teal-text">Agendamentos</a></li>
    <li class="tab"><a href="#Usuario4" class="teal-text">Consultas/Exames Futuros</a></li>
    <li class="tab"><a href="#Usuario5" class="teal-text">Hist�rico cl�nico</a></li>
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
<div id="Usuario3" class="col s12 container white scrollBarOnDiv">
    <nav>
        <div class="nav-wrapper teal lighten-4">
            <span class="teal-text teatl lighten-4">Voc� deseja agendar<span class="red-text">*</span></span>
        </div>
    </nav>
    <div>
        <label>
            <input class="with-gap exameRadio" name="group1" type="radio">
            <span class="teal-text">Exame</span>
        </label>
    </div>
    <div>
        <label>
            <input class="with-gap consultaRadio" name="group1" type="radio" >
            <span class="teal-text">Consulta</span>
        </label>
    </div>
    <!--Exame-->
    <div class="agendarE container">
        <form action="" method="GET">
            <div class="row">
                <div class="input-field col s12">
                    <textarea id="textarea1" name="informeExames" class="materialize-textarea"></textarea>
                    <label class="teal-text lighten-4" for="textarea1">Informe o nome dos exames</label>
                </div>
            </div>
            <div class="row">
                <div class="col s5 left">
                    <span class="teal-text teatl lighten-4">Qual a data de sua prefer�ncia?<span class="red-text">*</span></span>
                    <input id="data-exame" type="text"name="dataExame" class="datepicker">
                </div>
                <div class="col s5 right">
                    <label class="teal-text">Escolha o hor�rio desejado</label>
                    <select id="horario-exame" name="horarioExame" class="browser-default row">
                        <option value="" disabled selected>Hor�rios</option>
                        <option value="1">9:00</option>
                        <option value="2">9:00</option>
                        <option value="3">9:00</option>
                        <option value="4">9:00</option>
                        <option value="5">9:00</option>
                        <option value="6">9:00</option>
                        <option value="7">9:00</option>
                        <option value="8">9:00</option>
                        <option value="9">9:00</option>
                        <option value="10">9:00</option>
                    </select>
                </div>
            </div>
            <div class="card-panel">
                <span class="teal-text teatl lighten-4 ">Forma de atendimento<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-convenio" name="convenio" type="checkbox" class="ativarConvenio">
                    <span>Conv�nio</span>
                </label>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-particular" name="particular" type="checkbox" >
                    <span>Particular</span>
                </label>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-sus" name="sus" type="checkbox" >
                    <span>SUS</span>
                </label>
            </div>
            <div class="card-panel">
                <span class="teal-text teatl lighten-4 ">Como deseja sua resposta?<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-telefone" name="telefone" type="checkbox">
                    <span>Telefone</span>
                </label>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-email" name="email" type="checkbox" >
                    <span>Email</span>
                </label>
            </div>
            <!-- Modal Trigger -->
            <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Agendar</a>

            <!-- Modal Structure -->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <h4></h4>
                    <p>A disponibilidade de m�dicos e hor�rios est� sujeito a altera��es </p>
                </div>
                <div class="modal-footer">
                    <input type="submit" value="Concordo" class="modal-close waves-effect waves-green btn-flat">
                </div>
            </div>
        </form>
    </div>
    <!--Consulta-->
    <div class="agendarC container">
        <form action="" method="">
            <div class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="autocomplete-input" class="autocomplete">
                        <label class="teal-text" for="autocomplete-input">Motivo da consulta (por ex:Dor de cabe�a,tonturas etc...)</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s12">
                    <label  class="teal-text">Escolha a especialide</label>
                    <select id="especialidade-consulta" name="escolhaespecialidade" class="browser-default row">
                        <option value="" disabled selected>Especialidades</option>
                        <option value="1">Cl�nico geral</option>
                        <option value="2">Cardiologista</option>
                        <option value="3">Endocrinologista</option>
                        <option value="4">Ginecologista</option>
                        <option value="5">Oftalmologista</option>
                        <option value="6">Ortopedista</option>
                        <option value="7">Otorrinolaringologista</option>
                        <option value="8">Psiquiatra</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <label class="teal-text">Escolha o m�dico</label>
                    <select id="medico-consulta" name="medicosconsulta" class="browser-default row">
                        <option value="" disabled selected>M�dicos</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                        <option value="4">Option 3</option>
                        <option value="5">Option 3</option>
                        <option value="6">Option 3</option>
                        <option value="7">Option 3</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s5 left">
                    <span class="teal-text teatl lighten-4">Qual a data de sua prefer�ncia?<span class="red-text">*</span></span>
                    <input type="text" class="datepicker">
                </div>

                <div class="col s5 right">
                    <label class="teal-text">Escolha o hor�rio desejado</label>
                    <select id="horario-consulta" name="horarioconsulta" class="browser-default row">
                        <option value="" disabled selected>Hor�rios</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                        <option value="4">Option 3</option>
                        <option value="5">Option 3</option>
                        <option value="5">Option 3</option>
                        <option value="6">Option 3</option>
                        <option value="7">Option 3</option>
                        <option value="8">Option 3</option>
                        <option value="9">Option 3</option>
                    </select>
                </div>
            </div>

            <div class="card-panel">
                <span class="teal-text teatl lighten-4 ">Forma de atendimento<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="consulta-convenio" name="convenio" type="checkbox" class="ativarConvenio">
                    <span>Conv�nio</span>
                </label>
            </div>
            <div class="tipoConvenio">
                <div>
                    <label class="teal-text">
                        <input id="consulta-particular" name="particular" type="checkbox">
                        <span>Particular</span>
                    </label>
                </div>
                <div>
                    <label class="teal-text">
                        <input id="consulta-sus" name="sus" type="checkbox">
                        <span>SUS</span>
                    </label>
                </div>
            </div>
            <div class="card-panel">
                <span class="teal-text teatl lighten-4 ">Como deseja sua resposta?<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="consulta-telefone" name="telefone" type="checkbox">
                    <span>Telefone</span>
                </label>
            </div>

            <div>
                <label class="teal-text">
                    <input id="consulta-email" name="email" type="checkbox" >
                    <span>Email</span>
                </label>
            </div>
            <!-- Modal Trigger -->
            <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Agendar</a>

            <!-- Modal Structure -->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <h4></h4>
                    <p>A disponibilidade de m�dicos e hor�rios est� sujeito a altera��es </p>
                </div>
                <div class="modal-footer">
                    <input type="submit" value="Concordo" class="modal-close waves-effect waves-green btn-flat">
                </div>
            </div>
        </form>
    </div>
</div>
<div id="Usuario4" class="col s12 container white">
    <table class="striped teal lighten-4">
        <thead>
            <tr>
                <th>Tipo</th>
                <th>M�dico|Especialidade</th>
                <th>Data</th>
                <th>Hora</th>
                <th>Sala</th>
                <th></th>

            </tr>
        </thead>
        <tbody>
            <%
                DateFormat formatoEn = new SimpleDateFormat("yyyy/MM/dd");
                DateFormat formatoBr = new SimpleDateFormat("dd/MM/yyyy");
                Date hoje = new Date();
                List<ExpedicaoBean> expedicoes = new ExpedicaoDAO().obterTodos();
                for (int i = 0; i < expedicoes.size(); i++) {
                    if (expedicoes.get(i).getData_expedicao().after(formatoEn.parse(formatoEn.format(hoje)))) {
                        String especialidade = expedicoes.get(i).getFuncionario().getCargo().getEspecialidade();
                        String medico = expedicoes.get(i).getFuncionario().getUsuario().getNome();
                        String medicoEspecialidade = medico + "|" + especialidade;

                        String data = formatoBr.format(expedicoes.get(i).getData_expedicao());
                        QuartoBean quarto = new QuartoDAO().obterPeloId(usuario.getId());
                        int numeroQuarto = quarto.getNumero_quarto();
            %>
            <tr>
                <td><%=expedicoes.get(i).getTipo()%></td>
                <td><%=medicoEspecialidade%></td>
                <td><%=data%></td>
                <td><%=expedicoes.get(i).getHora_expedicao()%></td>
                <td><%=numeroQuarto%></td>
                <td>
                    <a href="/consulta/editar?id=<%=expedicoes.get(i).getId()%>"><i class="material-icons">edit</i></a>
                    <a href="/consulta/excluir?id=<%=expedicoes.get(i).getId()%>"><i class="material-icons">delete_forever</i></a>
                </td>
            </tr>
            <%}
                }%>
        </tbody>
    </table>
</div>
<div id="Usuario5" class="col s12 container white">
    <table class="striped teal lighten-4">
        <thead>
            <tr>
                <th>Descri��o</th>
                <th>M�dico | Especialidade</th>
                <th>Data</th>
                <th>Hor�rio</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <%
                    for (int i = 0; i < expedicoes.size(); i++) {
                        if (expedicoes.get(i).getData_expedicao().before(formatoEn.parse(formatoEn.format(hoje)))) {
                            String especialidade = expedicoes.get(i).getFuncionario().getCargo().getEspecialidade();
                            String medico = expedicoes.get(i).getFuncionario().getUsuario().getNome();
                            String medicoEspecialidade = medico + "|" + especialidade;
                            String data = formatoBr.format(expedicoes.get(i).getData_expedicao());
                %>
            <tr>
                <td><%=expedicoes.get(i).getTipo()%></td>
                <td><%=medicoEspecialidade%></td>
                <td><%=data%></td>
                <td><%=expedicoes.get(i).getHora_expedicao()%></td>
            </tr>
            <%}
                }%>
            </tr>
        </tbody>
    </table>                                   


</div>
<jsp:include page="../model/footer.jsp"/>
