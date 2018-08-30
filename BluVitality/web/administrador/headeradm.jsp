<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     : <!-- @Gustavo Rodrigues (gugaaroodrigues@gmail.com) 
-->
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Import Google Icon Font-->
        <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>

        <link rel='stylesheet' type='text/css' href='/resources/css/materialize.min.css'>
        <link rel='stylesheet' type='text/css' href='/resources/css/custom.css'>
    </head>
    <body>
        <header id="header" class="page-topbar">
            <!--NavBar-->
            <div class="navbar" style="margin-bottom: 100px">
                <nav class='nav-extended white z-depth-0' >
                    <div class='nav-wrapper'>

                        <a href='#Inicio' class='brand-logo'><img src="../resources/images/logo.gif" class="imagem-logo"></a>
                        <a href='' data-target='slide-out' class='sidenav-trigger teal-text'><i class='material-icons'>menu</i></a>

                        <ul class='right hide-on-med-and-down'>
                            <li><a href="#!"><i class="material-icons">search</i></a></li>
                            <li><a href="#!"><i class="material-icons">view_module</i></a></li>
                            <li><a href="#!"><i class="material-icons">more_vert</i></a></li>
                            <li><a href="#!"><i class="material-icons">format_indent_increase</i></a></li>
                        </ul>
                    </div>
                </nav>
                <ul id="slide-out" class="sidenav">
                    <li><div class="user-view">
                            <div class="background">
                                <img src="/resources/images/bg1.gif">
                            </div>
                            <a href="#user"><img class="circle" src="/resources/images/logo.gif"</a>
                            <a href="#name"><span class="white-text name">Alguem</span></a>
                            <a href="#email"><span class="white-text email">jdandturk@gmail.com</span></a>
                        </div><li><a href="#!">Perfil</a></li>
                    <li class="no-padding">
                        <ul class="collapsible collapsible-accordion">
                            <li>
                                <a class="collapsible-header">Hospital<i class="material-icons">arrow_drop_down</i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="#!">Configurações local</a></li>
                                        <li><a href="#!">Eventos</a></li>
                                        <li><a href="#!">Equipamentos</a></li>
                                        <li><a href="#!">Funcionarios</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a class="collapsible-header">Pacientes<i class="material-icons">arrow_drop_down</i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="#!">Perfil</a></li>
                                        <li><a href="#!">Prontuario</a></li>
                                        <li><a href="#!">Localização</a></li>
                                        <li><a href="#!">Geral B.O</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a class="collapsible-header">Pendencias<i class="material-icons">arrow_drop_down</i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="#!">Adicionar</a></li>
                                        <li><a href="#!">Solicitar</a></li>
                                        <li><a href="#!">Pedidos</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a class="collapsible-header">Estoque<i class="material-icons">arrow_drop_down</i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="#!">Medicamentos</a></li>
                                        <li><a href="#!">Equipamentos</a></li>
                                        <li><a href="#!">Solicitar M.</a></li>
                                        <li><a href="#!">Cadastrar</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>
