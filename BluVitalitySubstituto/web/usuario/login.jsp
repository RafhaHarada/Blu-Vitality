<%-- 
    Document   : login
    Created on : 05/09/2018, 08:48:09
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h4 class="row">Login</h4>
            <div class="row">
                <form class="col s12">
                    <div class="row">
                        <div class="g-signin2 col s12 m5 red white-text" data-onsuccess="onSignIn" data-redirecturi="/usuario"></div>
                        <div class="col s12 m5 btn white right">
                            <a href="#" class="blue-text">Login com Facebook</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="email_user" type="email" class="validate">
                            <label for="email_user">Email</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="password_user" type="password" class="validate">
                            <label for="password_user">Senha</label>
                        </div>
                    </div>
                </form>
                <div class="col s6 left">
                    <a href="#TrocarSenha">Esqueci a senha..</a>
                </div>
                <div class="col s6 right">
                    <a href="usuarios/cadastrar">Não tem conta?</a>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-close waves-effect btn-flat teal white-text">Entrar</a>
        </div>
    </body>
</html>
