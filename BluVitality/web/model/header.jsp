<%-- 
    Document   : header
    Created on : 23/08/2018, 10:11:41
    Author     : Rafael Alipio Harada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <title>Blu Vitality</title>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>

        <!--Import Google Icon Font-->
        <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>

        <link rel='stylesheet' type='text/css' href='../resources/css/materialize.min.css'>
        <link rel='stylesheet' type='text/css' href='../resources/css/custom.css'>
    </head>
    <body>
        <!--Cabeçalho-->
        <header>
            <nav class='nav-extended white lighten-2 z-depth-0'>
                <div class='nav-wrapper'>
                    <a href='#Inicio' class='brand-logo'><img src="../resources/images/logo.gif" class="imagem-logo"></a>
                    <a href='#' data-target='mobile' class='sidenav-trigger teal-text'><i class='material-icons'>menu</i></a>
                    <ul id='nav-mobile' class='right hide-on-med-and-down'>
                        <li><a class='dropdown-trigger' href='#' data-target='dropdown1'>Inicio</a>
                            <!-- Dropdown Structure -->
                            <ul id='dropdown1' class='dropdown-content'>
                                <li><a href="#!">Institucional</a></li>
                            </ul>
                        </li>

                        <li><a class='dropdown-trigger' href='#' data-target='dropdown2'>Serviços</a>
                            <!-- Dropdown Structure -->
                            <ul id='dropdown2' class='dropdown-content'>
                                <li><a href="#!">Agência Transfuncional</a></li>
                                <li><a href="#!">Centro Cirurgico</a></li>
                                <li><a href="#!">Centro Check-up</a></li>
                                <li><a href="#!">Centro Diagnostico por imagem</a></li>
                                <li><a href="#!">Centro de Oncologia</a></li>
                                <li><a href="#!">Clínica de Saúde Mental</a></li>
                                <li><a href="#!">CTI Adulto</a></li>
                                <li><a href="#!">CTI Infantil</a></li>
                                <li><a href="#!">Fármacia</a></li>
                                <li><a href='#!'>Fisioterapia</a></li>
                                <li><a href='#!'>Internação</a></li>
                                <li><a href='#!'>Pronto Atendimento</a></li>
                            </ul>    
                        </li>

                        <li><a class='dropdown-trigger' href='#' data-target='dropdown3'>Exames</a>
                            <!-- Dropdown Structure -->
                            <ul id='dropdown3' class='dropdown-content'>
                                <li><a href="#!">Cardiológicos</a></li>
                                <li><a href="#!">Cintilografia</a></li>
                                <li><a href="#!">Diagnóstico por Imagem</a></li>
                                <li><a href="#!">Endoscopia</a></li>
                                <li><a href="#!">Laboratoriais</a></li>
                                <li><a href="#!">Urológicos</a></li>
                            </ul>
                        </li>
                        
                        <li><a class='dropdown-trigger' href='#' data-target='dropdown4'>Contatos</a>
                            <!-- Dropdown Structure -->
                            <ul id='dropdown4' class='dropdown-content'>
                                <li><a href="#!">Agende uma consulta</a></li>
                                <li><a href="#!">Agende um exame</a></li>
                                <li><a href="#!">Central de Orçamento</a></li>
                                <li><a href="#!">Trabalhe Conosco</a></li>
                            </ul>
                        </li>
                        <li><a class='dropdown-trigger' data-target='dropdown5'>Sobre</a>
                            <ul id='dropdown5' class='dropdown-content'>
                                <li class="tab"><a href="#Sobre" id="botao-1">Nossa História</a></li>
                                <li class="tab"><a href="#Sobre" id="botao-2">Nossas fotos</a></li>
                                <li class="tab"><a href="#Sobre" id="botao-3">Missão, Visão e Valores</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

            <!--mobile e tablet side nav-->
            <ul class='sidenav' id='mobile'>
                <li><a href='#Login' class='waves-effect'><i class='material-icons'>assignment_ind</i>Entrar</a></li>
                <li><a href='#Registrar' class='waves-effect'><i class='material-icons'>assignment</i>Registrar</a></li>

                <li><a href='#Inicio' class='waves-effect'><i class='material-icons'>home</i>Inicio</a></li>
                <li></li>
                <li>
                    <ul class='collapsible text-bold'>
                        <li>
                            <div class='collapsible-header waves-effect'><i class='material-icons'>add</i>Serviços</div>
                            <div class='collapsible-body'>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Agência Transfuncional</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Centro Cirurgico</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Centro Check-up</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Centro Diagnostico por imagem</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Centro de Oncologia</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Clínica de Saúde Mental</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Pronto Atendimento</a></div>
                            </div>
                        </li>
                        <li>
                            <div class='collapsible-header waves-effect'><i class='material-icons'>add</i>Exames</div>
                            <div class='collapsible-body'>            
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Cardiológicos</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Cintilografia</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Diagnóstico por Imagem</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Endoscopia</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Laboratoriais</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Urológicos</a></div>
                            </div>
                        </li>
                        <li>
                            <div class='collapsible-header waves-effect'><i class='material-icons'>add</i>Sobre</div>
                            <div class='collapsible-body'>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Blu Vitallity</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Conheça nossa história</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Missão</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Visão</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Valores</a></div>
                                <div class='divider'></div>
                            </div>
                        </li>
                        <li>
                            <div class='collapsible-header waves-effect'><i class='material-icons'>add</i>Contatos</div>
                            <div class='collapsible-body'>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Agende uma consulta</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Agende um exame</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Central de Orçamento:</a></div>
                                <div class='divider'></div>
                                <div class='waves-effect'><a href="#!" class='sub-menu-mobile'>Trabalhe Conosco</a></div>
                            </div>
                        </li>
                        <li>
                            <div class='collapsible-header waves-effect'><i class='material-icons'>add</i>Sobre</div>
                            <div class='collapsible-body'>
                                <p><a href='#Sobre1' class='waves-effect sub-menu-mobile'><i class='material-icons left'>cached</i>  Nossa História</a></p>
                                <p><a href='#Sobre2' class='waves-effect sub-menu-mobile'><i class='material-icons left'>dashboard</i>  Nossas fotos</a></p>
                                <p><a href='#Sobre3' class='waves-effect sub-menu-mobile'><i class='material-icons left'>dns</i>  Missão, Visão e Valores</a></p>
                            </div>
                        </li>
                    </ul>
            </ul>
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
        </header>