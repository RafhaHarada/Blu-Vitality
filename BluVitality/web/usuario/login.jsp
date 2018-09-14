<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownLogin'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownLogin' class='dropdown-content'>
        <li><a href="../">Voltar a página inicial</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

<div class="row">
    <div class="col s10 m8 center">
        <h4 class="row">Login</h4>
        <div class="row">
            <form target="usuario/autentication" method="POST" class="col s12">
                <%
                    if(request.getParameter("erro").equals("login-invalido")){
                        %>
                        <div onload="M.toast({html: 'Login não sucedido'})" class="rounded red"></div>
                        <%
                    }
                %>
                <div class="row">
                    <div class="g-signin2 col s6 btn-large waves-effect red white-text" data-onsuccess="onSignIn"></div>
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

<jsp:include page="../model/footer.jsp"/>