<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     :@Gustavo Rodrigues (gugaaroodrigues@gmail.com) Rafhael Harada

--%>
<%@page import="br.com.Sistema.DAO.UsuariosDAO"%>
<!--%@include file="headeradm.jsp" %>-->
<%@ page import="br.com.Sistema.Bean.FuncionariosBean" %>
<%@ page import="br.com.Sistema.DAO.FuncionariosDAO" %>
<%@ page import="br.com.Sistema.Bean.UsuariosBean" %>
<%@ page import="br.com.Sistema.Bean.CargosBean" %>
<%@page import="java.util.List"%>


<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="#Entrar">Login</a></li>
        <li><a href="../">Voltar</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<!--INICIO MAIN-->
<main>
    <!--Slider-->
    <div class="wrapper">
        <!--Inicio section-->
        <div id="content">
            <div class="container">
                <div id="card-stats">
                    <div class="row">
                        <div class="col s12 m6 l4">
                            <div class="card"><a href="/administrador/hospital.jsp#">
                                    <div class="card-action blue-grey darken-1 white-text">

                                        <p class="card-stats-title">
                                            <i class="material-icons">location_city</i>Hospital</p>
                                    </div>
                            </div></a>
                        </div>
                        <div class="col s12 m6 l4">
                            <div class="card"><a href="#hospitalFuncionarios">
                                    <div class="card-action blue-grey darken-2 white-text">
                                        <p class="card-stats-title">
                                            <i class="material-icons">people</i>Funcionarios</p>
                                    </div>
                            </div></a>
                        </div>
                        <div class="col s12 m6 l4">
                            <div class="card"><a href="#">
                                    <div class="card-action blue-grey darken-3 white-text">
                                        <p class="card-stats-title">
                                            <i class="material-icons">monetization_on</i>Financeiro</p>
                                    </div>
                            </div></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="chart-dashboard" class="container">
            <div class="col s12 ">
                <div class="card">
                    <div class="card-move-up">
                        <div class="move-up cyan darken-1">
                            <span class="chart-title white-text"><h5>Pacientes</h5></span>
                            <div class="chart-revenue cyan darken-2 white-text">
                                <% List<UsuariosBean> usuarios  = new UsuariosDAO().obterTodos();%>
                                <table class="responsive-table striped">
                                    <thead>
                                        <tr>
                                            <th>Paciente</th>
                                            <th>idade</th>
                                            <th>Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for (UsuariosBean usuario : usuarios) {%>
                                        <tr>
                                            <td><%=usuario.getNome()%></td>
                                            <td><%=usuario.getCpf()%></td>
                                            <td><a href=""><i class="material-icons">edit</i>Editar</a><a href=""><i class="material-icons">delete</i>Deletar</a></td>
                                        </tr>
                                        <% } %>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Paciente</th>
                                            <th>idade</th>
                                            <th>Ação</th>
                                        </tr>
                                    </tfoot>
                                </table>    

                            </div>
                        </div>
                    </div>
                    <div class="card-content teal">
                        <a class="btn-floating btn-move-up waves-effect waves-light red accent-2 z-depth-4 right">
                            <i class="material-icons activator right">dehaze</i>
                        </a>
                        <div class="col s12 m3 l3">
                            <div id="doughnut-chart-wrapper">

                            </div>
                        </div>
                        <div class="col s12 m2 l2">
                            <ul class="doughnut-chart-legend">


                            </ul>
                        </div>
                        <div class="col s12 m5 l6">
                            <div class="trending-bar-chart-wrapper">
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Prontuario
                            <i class="material-icons">
                                <input type="text" name="Search" placeholder="Procurar Paciente">search</i>

                            <i class="material-icons right">close</i>
                        </span>

                    </div>
                </div>
            </div>

            <div class="col s12 ">
                <div class="card">
                    <div class="card-move-up">
                        <div class="move-up cyan darken-1">
                            <span class="chart-title white-text"><h5>Funcinarios</h5></span>
                            <div class="chart-revenue cyan darken-2 white-text">
                                <% List<FuncionariosBean> funcionarios  = new FuncionariosDAO().obterTodos();%>
                                <table class="responsive-table striped">
                                    <thead>
                                        <tr>
                                            <th>Funcionario</th>
                                            <th>Função</th>
                                            <th>Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for (FuncionariosBean funcionario : funcionarios) {%>
                                        <tr>
                                            <td><%=funcionario.getUsuario().getNome()%></td>
                                            <td><%=funcionario.getCargo().getNome() %></td>
                                            <td><a href=""><i class="material-icons">edit</i>Editar</a><a href=""><i class="material-icons">delete</i>Deletar</a></td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                    
                                    <tfoot>
                                        <tr>
                                            <th>Paciente</th>
                                            <th>idade</th>
                                            <th>Ação</th>
                                        </tr>
                                    </tfoot>
                                </table>      

                            </div>
                        </div>
                    </div>
                    <div class="card-content teal">
                        <a class="btn-floating btn-move-up waves-effect waves-light red accent-2 z-depth-4 right">
                            <i class="material-icons activator right">dehaze</i>
                        </a>
                        <div class="col s12 m3 l3">
                            <div id="doughnut-chart-wrapper">

                            </div>
                        </div>
                        <div class="col s12 m2 l2">
                            <ul class="doughnut-chart-legend">


                            </ul>
                        </div>
                        <div class="col s12 m5 l6">
                            <div class="trending-bar-chart-wrapper">
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Funcionarios
                            <i class="material-icons">
                                <input type="text" name="Search" placeholder="Procurar Paciente">search</i>

                            <i class="material-icons right">close</i>
                        </span>

                    </div>
                </div>
            </div>
        </div>

    </div>
</main>
<!--Inicio section-->


</body>

<jsp:include page="../model/footer.jsp"/>