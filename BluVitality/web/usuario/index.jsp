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
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="/usuario/logout" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

<ul class="tabs tabs-transparent">
    <li class="tab"><a href="#Usuario1" class="active teal-text">Paciente</a></li>
    <li class="tab"><a href="#Usuario3" class="teal-text">Agendamentos</a></li>
    <li class="tab"><a href="#Usuario4" class="teal-text">Consultas/Exames Futuros</a></li>
    <li class="tab"><a href="#Usuario5" class="teal-text">Histórico clínico</a></li>
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

    </div>
</div>
<div id="Usuario3" class="col s12 container white scrollBarOnDiv">
    <nav>
        <div class="nav-wrapper teal lighten-4">
            <span class="teal-text teatl lighten-4">Você deseja agendar<span class="red-text">*</span></span>
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
        <form action="/expedicao/store" method="GET">
            <div class="row">
                <div class="input-field col s12">
                    <input id="exame-cadastro-tipo" type="text" name="tipo" required="required" disabled></input>
                    <label class="teal-text lighten-4" for="exame-cadastro-tipo">Agendarei um</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <label for="exame-cadastro-id-usuario" class="teal-text">Paciente</label>
                    <%
                        FuncionariosBean isFuncionario = new FuncionarioDAO().obterPeloIdUsuario(usuario.getId());
                        if (isFuncionario.getTipo() != "") {
                            List<UsuarioBean> usuariosE = new UsuarioDAO().obterTodos();
                    %>
                    <select id="exame-cadastro-id-usuario" name="id-usuario" class="browser-default row" required="required">
                        <option value="" disabled selected>Agende aqui para</option>
                        <% for (int i = 0; i < usuariosE.size(); i++) {
                        %>
                        <option value="<%=usuariosE.get(i).getId()%>"><%=usuariosE.get(i).getNome()%></option>
                        <%
                            }
                        %>
                    </select>
                    <%
                    } else {
                    %>
                    <select id="exame-cadastro-id-usuario" name="id-usuario" class="browser-default row" required="required">
                        <option value="<%=usuario.getId()%>" disabled selected><%=usuario.getNome()%></option>
                    </select>
                    <%
                        }
                    %>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <label for="exame-cadastro-id-funcionario" class="teal-text">Médico</label>
                    <select id="exame-cadastro-id-funcionario" name="id-funcionario" class="browser-default row" required="required">
                        <option value="" disabled selected>Ser atendido por</option>
                        <% 
                            List<FuncionariosBean> funcionariosE = new FuncionarioDAO().obterTodos();
                            for (int i = 0; i < funcionariosE.size(); i++) {
                                if (funcionariosE.get(i).getCargo().getNome().equals("Medico")) {
                        %>
                        <option value="<%=funcionariosE.get(i).getId()%>"><%=funcionariosE.get(i).getUsuario().getNome()%></option>
                        <%
                                }
                            }
                        %>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="exame-cadastro-nome" type="text" name="nome" required="required"></input>
                    <label class="teal-text lighten-4" for="exame-cadastro-nome">Informe o nome do exame</label>
                </div>
            </div>
            <div class="row">
                <div class="col s5 left">
                    <input id="exame-cadastro-data" type="text" name="data" class="datepicker" required="required">
                    <label class="teal-text teatl lighten-4" for="exame-cadastro-data">Qual a data de sua preferência?<span class="red-text">*</span></label>
                </div>
                <div class="col s5 right">
                    <label for="exame-cadastro-hora" class="teal-text">Escolha o horário desejado</label>
                    <select id="exame-cadastro-hora" name="hora" class="browser-default row" required="required">
                        <option value="" disabled selected>Horário</option>
                        <% for (int i = 5; i <= 20; i++) {
                        %>
                        <option value="<%if (i < 10) {%>0<%=i%><%} else {%><%=i%><%}%>:00:00"><%=i%>:00</option>
                        <option value="<%if (i < 10) {%>0<%=i%><%} else {%><%=i%><%}%>:30:00"><%=i%>:30</option>
                        <%
                            }
                        %>
                    </select>
                </div>
            </div>
            <div class="card-panel">
                <span class="teal-text teatl lighten-4 ">Forma de atendimento<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="exame-cadastro-convenio" type="checkbox">
                    <span>Convênio</span>
                </label>
            </div>
            <div>
                <label for="exame-cadastro-custo" class="teal-text">Custo</label>
                <input id="exame-cadastro-custo" name="custo" type="number" value="0" disabled>
            </div>
            <!-- Modal Trigger -->
            <a class="waves-effect waves-light btn modal-trigger" id="expedicao-cadastrar" href="#modal1">Agendar</a>

            <!-- Modal Structure -->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <p>A disponibilidade de médicos e horários está sujeito a alterações</p>
                </div>
                <div class="modal-footer">
                    <input class="modal-close waves-effect btn-small" value="Concordo" type="submit">
                </div>
            </div>
        </form>
    </div>
    <!--Consulta-->
    <div class="agendarC container">
        <form action="/expedicao/store" method="GET">
            <div class="row">
                <div class="input-field col s12">
                    <input id="exame-cadastro-tipo" type="text" name="tipo" required="required" disabled></input>
                    <label class="teal-text lighten-4" for="exame-cadastro-tipo">Agendarei um</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <label for="consulta-cadastro-id-usuario" class="teal-text">paciente</label>
                    <%
                        FuncionariosBean isFuncionarioC = new FuncionarioDAO().obterPeloIdUsuario(usuario.getId());
                        if (isFuncionarioC.getTipo() != "") {
                            List<UsuarioBean> usuariosC = new UsuarioDAO().obterTodos();
                    %>
                    <select id="consulta-cadastro-id-usuario" name="id-usuario" class="browser-default row" required="required">
                        <option value="" disabled selected>Agende aqui para</option>
                        <% for (int i = 0; i < usuariosC.size(); i++) {
                        %>
                        <option value="<%=usuariosC.get(i).getId()%>"><%=usuariosC.get(i).getNome()%></option>
                        <%
                            }
                        %>
                    </select>
                    <%
                    } else {
                    %>
                    <select id="exame-cadastro-id-usuario" name="id-usuario" class="browser-default row" required="required">
                        <option value="<%=usuario.getId()%>" disabled selected><%=usuario.getNome()%></option>
                    </select>
                    <%
                        }
                    %>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <label for="consulta-cadastro-id-funcionario" class="teal-text">Médico</label>
                    <select id="consulta-cadastro-id-funcionario" name="id-funcionario" class="browser-default row" required="required">
                        <option value="" disabled selected>Ser atendido por</option>
                        <%
                            List<FuncionariosBean> funcionariosC = new FuncionarioDAO().obterTodos();
                            for (int i = 0; i < funcionariosC.size(); i++) {
                                if (funcionariosC.get(i).getCargo().getNome().equals("Medico")) {
                        %>
                        <option value="<%=funcionariosC.get(i).getId()%>"><%=funcionariosC.get(i).getUsuario().getNome()%></option>
                        <%
                                }
                            }
                        %>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <label for="consulta-cadastro-nome">Especialide</label>
                    <select id="consulta-cadastro-nome" name="nome" class="browser-default row">
                        <option value="" disabled selected>Escolha a especialide</option>
                        <option value="Clínico geral">Clínico geral</option>
                        <option value="Cardiologista">Cardiologista</option>
                        <option value="Endocrinologista">Endocrinologista</option>
                        <option value="Ginecologista">Ginecologista</option>
                        <option value="Oftalmologista">Oftalmologista</option>
                        <option value="Ortopedista">Ortopedista</option>
                        <option value="Otorrinolaringologista">Otorrinolaringologista</option>
                        <option value="Psiquiatra">Psiquiatra</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s5 left">
                    <input id="consulta-cadastro-data" type="text" name="data" class="datepicker" required="required">
                    <label class="teal-text teatl lighten-4" for="consulta-cadastro-data">Qual a data de sua preferência?<span class="red-text">*</span></label>
                </div>
                <div class="col s5 right">
                    <label for="consulta-cadastro-hora">Horário</label>
                    <select id="consulta-cadastro-hora" name="hora" class="browser-default row" required="required">
                        <option value="" disabled selected>Escolha o horário desejado</option>
                        <% for (int i = 5; i <= 20; i++) {
                        %>
                        <option value="<%if (i < 10) {%>0<%=i%><%} else {%><%=i%><%}%>:00:00"><%=i%>:00</option>
                        <option value="<%if (i < 10) {%>0<%=i%><%} else {%><%=i%><%}%>:30:00"><%=i%>:30</option>
                        <%
                            }
                        %>
                    </select>
                </div>
            </div>
            <div class="card-panel">
                <span class="teal-text teatl lighten-4 ">Forma de atendimento<span class="red-text">*</span></span>
            </div>
            <div>
                <label class="teal-text">
                    <input id="consulta-convenio" type="checkbox">
                    <span>Convênio</span>
                </label>
            </div>
            <div>
                <label for="consulta-cadastro-custo" class="teal-text">Custo</label>
                <input id="consulta-cadastro-custo" name="custo" type="number" value="0" disabled>
            </div>
            <!-- Modal Trigger -->
            <a class="waves-effect waves-light btn modal-trigger" id="expedicao-cadastrar" href="#modal2">Agendar</a>

            <!-- Modal Structure -->
            <div id="modal2" class="modal">
                <div class="modal-content">
                    <h4></h4>
                    <p>A disponibilidade de médicos e horários está sujeito a alterações </p>
                </div>
                <div class="modal-footer">
                    <input class="modal-close waves-effect btn-small" value="Concordo" type="submit">
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
                <th>Médico|Especialidade</th>
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
                <th>Descrição</th>
                <th>Médico | Especialidade</th>
                <th>Data</th>
                <th>Horário</th>
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
