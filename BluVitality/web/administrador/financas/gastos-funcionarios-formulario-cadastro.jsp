<%-- 
    Document   : gastos-funcionarios-formulario-cadastro
    Created on : 23/09/2018, 16:21:36
    Author     : Edemar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="br.com.Sistema.Bean.FuncionariosBean"%>
<%@page import="br.com.Sistema.DAO.FuncionariosDAO"%>
<%@page import="br.com.Sistema.Bean.UsuariosBean"%>
div class="row"></div>
<div class="container col s12">
    <form action="/usuario/store" method="POST">
        <div class="row">
            <div class="input-field col s12 m7">
                <i class="material-icons prefix">account_circle</i>
                <input id="cadastro-nome-completo" type="text" class="validate" name="nome-completo">
                <label for="cadastro-nome-completo">Nome Completo</label>
            </div>
