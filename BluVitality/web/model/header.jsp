<%-- 
    Document   : header
    Created on : 23/08/2018, 10:11:41
    Author     : Rafael Alipio Harada @Gustavo Rodrigues 
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
                <li>
                    <a href='#'>Inicio</a>
                </li>
                <%@include file="sidenavcard.jsp"%>
                <li>
                    <ul class="collapsible collapsible-accordion">
                        <li>
                            <a class="collapsible-header waves-effect">Serviços<i class="material-icons">arrow_drop_down</i></a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="#!" >Agência Transfuncional</a></li>
                                    <li><a href="#!">Centro Cirurgico</a></li>
                                    <li><a href="#!" >Centro Check-up</a></li>
                                    <li><a href="#!" >Centro Diagnostico por imagem</a></li>
                                    <li><a href="#!" >Centro de Oncologia</a></li>
                                    <li><a href="#!">Clínica de Saúde Mental</a></li>
                                    <li><a href="#!">Pronto Atendimento</a></li>
                                </ul>
                            </div>
                        </li>
                         <div class="divider"></div>
                        <li>
                            <a class="collapsible-header waves-effect">Exames<i class="material-icons">arrow_drop_down</i></a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="#!">Cardiológicos</a></li>
                                    <li><a href="#!">Cintilografia</a></li>
                                    <li><a href="#!">Diagnóstico por Imagem</a></li>
                                    <li><a href="#!">Endoscopia</a></li>
                                    <li><a href="#!">Laboratoriais</a></li>
                                    <li><a href="#!">Urológicos</a></li>
                                </ul>
                            </div>
                        </li>
                         <div class="divider"></div>
                        <li>
                            <a class="collapsible-header waves-effect">Contato<i class="material-icons">arrow_drop_down</i></a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="#!">Agende uma consulta</a></li>
                                    <li><a href="#!">Agende um exame</a></li>
                                    <li><a href="#!">Central de Orçamento:</a></li>
                                    <li><a href="#!">Trabalhe Conosco</a></li>
                                </ul>
                            </div>
                        </li>
                         <div class="divider"></div>
                        <li>
                            <a class="collapsible-header waves-effect">Sobre<i class="material-icons">arrow_drop_down</i></a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="#sobre1">Nossa História</a></li>
                                    <li><a href="#sobre2">Nossas Fotos</a></li>
                                    <li><a href="#sobre3">MIssão, Visão e Valores</a></li>
                                </ul>
                            </div>
                        </li>
                         <div class="divider"></div>
                    </ul>
            </ul>

            <div class="slider">
                <ul class="slides">
                    <li>
                        <img src="../resources/images/slider1.jpg" alt=''> <!-- random image -->
                        <div class="caption left-align black-text">
                            <h3>Blu Vitality</h3>
                            <h5>Vital para você, vital para nós.</h5>
                        </div>
                    </li>
                    <li>
                        <img src="../resources/images/slider2.png" alt=''> <!-- random image -->
                        <div class="caption left-align black-text">
                            <h3>Alta Tecnologia e Gestão</h3>
                            <h5>Tenha mais mobilidade e eficiência.</h5>
                        </div>
                    </li>
                    <li>
                        <img src="../resources/images/slider3.jpg" alt=''> <!-- random image -->
                        <div class="caption left-align black-text">
                            <h3>Visite Nosso Hospital</h3>
                            <h5>Estruturado,organizado e preparado!</h5>
                        </div>
                    </li>
                </ul>
            </div>
        </header>