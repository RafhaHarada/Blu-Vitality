<%-- 
    Document   : index (usuario)
    Created on : 27/08/2018, 08:14:38
    Author     : @Nattana Matos (nattana.matos@Outlook.pt)
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

<ul class="tabs tabs-transparent center">
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
    <%@include file="/model/tabsCargos/agendamentos.jsp"%>
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
                    <a href="/expedicao/editar?id=<%=expedicoes.get(i).getId()%>"><i class="material-icons">edit</i></a>
                    <a href="/expedicao/excluir?id=<%=expedicoes.get(i).getId()%>"><i class="material-icons">delete_forever</i></a>
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
