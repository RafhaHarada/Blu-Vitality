<%-- 
    Document   : consulta-exames
    Created on : 27/09/2018, 05:38:19
    Author     : Gus
--%>
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
                <label class="teal-text lighten-4" for="tipo">Agendarei um</label>
                <input id="exame-cadastro-tipo" type="text" name="tipo" required="required" disabled></input>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <label for="exame-cadastro-id-usuario" class="teal-text">Paciente</label><br>
                <%
                    FuncionarioBean isFuncionario = new FuncionarioDAO().obterPeloIdUsuario(usuario.getId());
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
                        List<FuncionarioBean> funcionariosE = new FuncionarioDAO().obterTodos();
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
                <label class="teal-text lighten-4" id="exame-cadastro-nome" for="exame-cadastro-nome">Informe o nome do exame</label>
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
        <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Agendar</a>

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
                <input id="consulta-cadastro-tipo" type="text" name="tipo" required="required" disabled></input>
                <label class="teal-text lighten-4" for="consulta-cadastro-tipo">Agendarei um</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <label for="consulta-cadastro-id-usuario" class="teal-text">paciente</label>
                <%
                    FuncionarioBean isFuncionarioC = new FuncionarioDAO().obterPeloIdUsuario(usuario.getId());
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
                <select id="consulta-cadastro-id-usuario" name="id-usuario" class="browser-default row" required="required">
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
                        List<FuncionarioBean> funcionariosC = new FuncionarioDAO().obterTodos();
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
        <a class="waves-effect waves-light btn modal-trigger" href="#modal2">Agendar</a>

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