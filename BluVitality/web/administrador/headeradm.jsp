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

        <link rel='stylesheet' type='text/css' href='/BluVitality/resources/css/materialize.min.css'>
        <link rel='stylesheet' type='text/css' href='/BluVitality/resources/css/custom.css'>
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
                                <img src="/BluVitality/resources/images/bg1.gif">
                            </div>
                            <a href="#user"><img class="circle" src="/BluVitality/resources/images/logo.gif"</a>
                            <a href="#name"><span class="white-text name">John Doe</span></a>
                            <a href="#email"><span class="white-text email">jdandturk@gmail.com</span></a>
                        </div></li>
                    <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
                    <li><a href="#!">Second Link</a></li>
                    <li><div class="divider"></div></li>
                    <li><a class="subheader">Subheader</a></li>
                    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
                </ul>
            </div>
        </header>
