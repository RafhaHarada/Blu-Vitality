<%-- 
    Document   : index
    Created on : 21/08/2018, 08:14:38
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel='stylesheet' type='text/css' href='/BluVitality/model/footer.jsp'>
        <link rel='stylesheet' type='text/css' href='/BluVitality/model/header.jsp'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="headeradm.jsp" %>

        <!--INICIO MAIN-->
        <div id="main" class="main-full">
            <div class="wrapper">
                <!--INICIO SIDEBAR NAV-->
                <aside id="left-sidebar-nav" class="nav-expanded nav-lock nav-collapsible "
                       <div class="brand-sidebar">

                    </div>
                    <ul id="slide-out" class="sidenav">
                        <li><div class="user-view ">
                                <div class="background">
                                    <img src="../resources/images/bg1.gif">
                                </div>
                                <a href="#user"><img class="circle" src="../resources/images/Koala.jpg"></a>
                                <a href="#name"><span class="white-text name">Joãozinho</span></a>
                                <h6 id=" Função" class="white-text">Gerente</h6>
                                <a href="#email"><span class="white-text email">bluvitality@gmail.com</span></a>
                            </div></li>
                        <li><a href="#!"><i class="material-icons">home</i>Inicio</a></li>
                        <li><a href="#!"><i class="material-icons">monetization_on</i>Finanças</a></li>
                        <li><a href="#!"><i class="material-icons">monetization_on</i>Finanças</a></li>
                        <li><a href="#!"><i class="material-icons">monetization_on</i>Finanças</a></li>
                        <li><a href="#!"><i class="material-icons">monetization_on</i>Finanças</a></li>
                        <li><a href="#!"><i class="material-icons">monetization_on</i>Finanças</a></li>
                        <li><div class="divider"></div></li>
                        <li><a class="subheader">Subheader</a></li>
                        <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
                        <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
                    </ul>
                    <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>

                    <!--Inicio section-->
                    <div id="content">
                        <div class="container">
                            <div id="card-stats">
                                <div class="row">
                                    <div class="col s12 m6 l3">
                                        <div class="card"><a href="#">
                                                <div class="card-action blue-grey darken-1 white-text">

                                                    <p class="card-stats-title">
                                                        <i class="material-icons">location_city</i>Hospital</p>
                                                </div>
                                        </div></a>
                                    </div>
                                    <div class="col s12 m6 l3">
                                        <div class="card"><a href="#">
                                                <div class="card-action blue-grey darken-2 white-text">
                                                    <p class="card-stats-title">
                                                        <i class="material-icons">people</i>Pacientes</p>
                                                </div>
                                        </div></a>
                                    </div>
                                    <div class="col s12 m6 l3">
                                        <div class="card"><a href="#">
                                                <div class="card-action blue-grey darken-3 white-text">
                                                    <p class="card-stats-title">
                                                        <i class="material-icons">monetization_on</i>Financeiro</p>
                                                </div>
                                        </div></a>
                                    </div>
                                    <div class="col s12 m6 l3">
                                        <div class="card"><a href="#">
                                                <div class="card-action blue-grey darken-4 white-text">
                                                    <p class="card-stats-title">
                                                        <i class="material-icons">event_note</i>Pendencias</p>
                                                </div>
                                        </div></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="chart-dashboard" class="container">
                        <div class="row">
                            <div class="col s12 ">
                                <div class="card">
                                    <div class="card-move-up waves-effect waves-block waves-light">
                                        <div class="move-up cyan darken-1">
                                            <div>
                                                <span class="chart-title white-text"><h5>Fila de espera</h5></span>
                                                <div class="chart-revenue cyan darken-2 white-text">
                                                    <p class="chart-revenue-per cyan darken-2">
                                                    <table class="responsive-table striped">
                                                        <thead>
                                                            <tr>
                                                                <th data-field="id">Numero</th>
                                                                <th data-field="item-sold">Paciente</th>
                                                                <th data-field="item-price">idade</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Gustavo</td>
                                                                <td>22</td>
                                                            </tr>
                                                            <tr>
                                                                <td>2</td>
                                                                <td>Gustavo</td>
                                                                <td>22</td>
                                                            </tr>
                                                            <tr>
                                                                <td>3</td>
                                                                <td>Gustavo</td>
                                                                <td>22</td>
                                                            </tr>
                                                            <tr>
                                                                <td>4</td>
                                                                <td>Gustavo</td>
                                                                <td>22</td>
                                                            </tr>
                                                            <tr>
                                                                <td>5</td>
                                                                <td>Gustavo</td>
                                                                <td>22</td>
                                                            </tr>
                                                            <tr>
                                                                <td>6</td>
                                                                <td>Gustavo</td>
                                                                <td>22</td>
                                                            </tr>

                                                        </tbody>
                                                    </table></p>

                                                </div>
                                            </div>
                                            <div class="trending-line-chart-wrapper">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-content">
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
                                    <div class="card-move-up teal accent-4 waves-effect waves-block waves-light">
                                        <div class="move-up">
                                            <p class="margin white-text">Medicos</p>
                                        </div>

                                        <a class="btn-floating btn-move-up waves-effect waves-light red accent-2 z-depth-4 right">
                                            <i class="material-icons activator">dehaze</i>
                                        </a>
                                        <div class="line-chart-wrapper">
                                        </div>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Outros funcionarios
                                            <i class="material-icons right">close</i>
                                        </span>
                                        <table class="responsive-table">

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <aside>

                    </aside>
            </div>
            <!--Inicio section-->


    </body>

    <!--   JavaScript Setup  -->
    <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>

    <link rel='stylesheet' type='text/css' href='../resources/css/materialize.min.css'>
    <link rel='stylesheet' type='text/css' href='../resources/css/custom.css'>
    <script type='text/javascript' src='../resources/js/jquery.min.js'></script>
    <script type='text/javascript' src='../resources/js/materialize.min.js'></script>
    <script type='text/javascript' src='../resources/js/custom.js'></script>
</html>