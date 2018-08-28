<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     :@Gustavo Rodrigues (gugaaroodrigues@gmail.com) Rafhael Harada

--%>
<!--%@include file="headeradm.jsp" %>-->
<jsp:include page="../model/header.jsp"/>
<!--INICIO MAIN-->
<main>
    <!--Slider-->

        <div class="container">
            <div class="slider">
                <ul class="slides">
                    <li>
                        <img src="/BluVitality/resources/images/slider1.jpg" alt=''> <!-- random image -->
                        <div class="caption left-align black-text">
                            <h3>Blu Vitality</h3>
                            <h5>Vital para você, vital para nós.</h5>
                        </div>
                    </li>
                    <li>
                        <img src="/BluVitality/resources/images/slider2.png" alt=''> <!-- random image -->
                        <div class="caption left-align black-text">
                            <h3>Alta Tecnologia e Gestão</h3>
                            <h5>Tenha mais mobilidade e eficiência.</h5>
                        </div>
                    </li>
                    <li>
                        <img src="/BluVitality/resources/images/slider3.jpg" alt=''> <!-- random image -->
                        <div class="caption left-align black-text">
                            <h3>Visite Nosso Hospital</h3>
                            <h5>Estruturado,organizado e preparado!</h5>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    <div class="wrapper">
        <!--Inicio section-->
        <div id="content">
            <div class="container">
                <div id="card-stats">
                    <div class="row">
                        <div class="col s12 m6 l4">
                            <div class="card"><a href="/BluVitality/administrador/hospital.jsp#">
                                    <div class="card-action blue-grey darken-1 white-text">

                                        <p class="card-stats-title">
                                            <i class="material-icons">location_city</i>Hospital</p>
                                    </div>
                            </div></a>
                        </div>
                        <div class="col s12 m6 l4">
                            <div class="card"><a href="#">
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
                        <!--<div class="col s12 m6 l3">
                            <div class="card"><a href="#">
                                    <div class="card-action blue-grey darken-4 white-text">
                                        <span><i class="material-icons">event_note</i>Pendencias</span>
                                    </div>
                            </div></a>
                        </div>-->
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
                                <table class="responsive-table striped">
                                    <thead>
                                        <tr>
                                            <th data-field="item-sold">Paciente</th>
                                            <th data-field="item-price">idade</th>
                                            <th data-field="item-price" >Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td>Gustavo</td>
                                            <td>22</td>
                                            <td><a href=""><i class="material-icons">edit</i>Editar</a><a href=""><i class="material-icons">delete</i>Deletar</a></td>
                                        </tr>
                                        </tr>

                                    </tbody>
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
                            <span class="chart-title white-text"><h5>Funcinario</h5></span>
                            <div class="chart-revenue cyan darken-2 white-text">
                                <table class="responsive-table striped">
                                    <thead>
                                        <tr>
                                            <th data-field="item-sold">Funcionario</th>
                                            <th data-field="item-price">Função</th>
                                            <th data-field="item-price" >Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td>Gustavo</td>
                                            <td>Medico</td>
                                            <td><a href=""><i class="material-icons">edit</i>Editar</a><a href=""><i class="material-icons">delete</i>Deletar</a></td>
                                        </tr>
                                        </tr>

                                    </tbody>
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

<!--   JavaScript Setup  -->
<link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>

<link rel='stylesheet' type='text/css' href='../resources/css/materialize.min.css'>
<link rel='stylesheet' type='text/css' href='../resources/css/custom.css'>
<script type='text/javascript' src='../resources/js/jquery.min.js'></script>
<script type='text/javascript' src='../resources/js/materialize.min.js'></script>
<script type='text/javascript' src='../resources/js/custom.js'></script>
</html>