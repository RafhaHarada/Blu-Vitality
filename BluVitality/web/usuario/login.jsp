<%-- 
    Document   : login
    Created on : 29/08/2018, 23:52:42
    Author     : @Rafael Alipio Harada (rafhaharada@gmail.com)
--%>

<%@page import="br.com.Sistema.Bean.FuncionariosBean"%>
<%@page import="br.com.Sistema.DAO.FuncionariosDAO"%>
<%@page import="br.com.Sistema.Bean.UsuariosBean"%>
<%
    if (session.getAttribute("usuario") != null || session.getAttribute("usuario") != "") {
        UsuariosBean usuario = ((UsuariosBean) session.getAttribute("usuario"));
        String tipoFuncionario = "";
        FuncionariosBean funcionario = new FuncionariosDAO().obterPeloIdUsuario(usuario.getId());
        tipoFuncionario = funcionario.getTipo();
        if (!tipoFuncionario.isEmpty()) {
            response.sendRedirect("/" + tipoFuncionario);
        } else {
            response.sendRedirect("/usuario");
        }
    }
%>

<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownLogin'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownLogin' class='dropdown-content'>
        <li><a href="../">Voltar a página inicial</a></li>
    </ul>
</li>
<jsp:include page="../model/headerEndNoSidenav.jsp"/>

<div class="container">
    <div class="col s10 m8 center">
        <h4 class="row">Login</h4>
        <div class="row">
            <form action="/usuario/autentication" method="post" class="col s12">
                <div class="row">
                    <div class="g-signin2 waves-effect white-text" data-onsuccess="onSignIn"></div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="login_usuario" name="login" type="text" class="validate">
                        <label for="login_usuario">Login</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="senha_usuario" name="senha" type="password" class="validate">
                        <label for="senha_usuario">Senha</label>
                    </div>
                </div>
                <input type="submit" class="waves-effect btn-flat teal white-text" value="Entrar">
            </form>
            <div class="col s6 left">
                <a href="#TrocarSenha">Esqueci a senha..</a>
            </div>
            <div class="col s6 right">
                <a href="usuarios/cadastrar">Não tem conta?</a>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../model/footer.jsp"/>