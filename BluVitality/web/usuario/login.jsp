<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownLogin'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownLogin' class='dropdown-content'>
        <li><a href="../">Voltar a página inicial</a></li>
    </ul>
</li></ul>
</div>
</nav>
<!--mobile e tablet side nav-->
<ul class='sidenav' id='mobile'>
    <li>
        <a href="#" class="sidenav-close waves-effect waves-teal teal"><i class="material-icons white-text">arrow_back</i></a>
    </li>
    <li>
        <a class="collapsible-header waves-effect waves-teal">Serviços<i class="material-icons">arrow_drop_down</i></a>
        <div class="collapsible-body">
            <ul>
                <li><a href="#Servicos">Serviços</a></li>
            </ul>
        </div>
    </li>
    <div class="divider"></div>
    <li>
        <a class="collapsible-header waves-effect waves-teal">Exames<i class="material-icons">arrow_drop_down</i></a>
        <div class="collapsible-body">
            <ul>
                <li><a href="#Exames">Exames</a></li>
            </ul>
        </div>
    </li>
    <div class="divider"></div>
    <li>
        <a class="collapsible-header waves-effect waves-teal">Contatos<i class="material-icons">arrow_drop_down</i></a>
        <div class="collapsible-body">
            <ul>
                <li><a href="#Contatos">Contatos</a></li>
            </ul>
        </div>
    </li>
    <div class="divider"></div>
    <li>
        <a class="collapsible-header waves-effect waves-teal">Sobre<i class="material-icons">arrow_drop_down</i></a>
        <div class="collapsible-body">
            <ul>
                <li><a href="#Sobre">Sobre</a></li>
            </ul>
        </div>
    </li>
</ul>
</li>
</ul>
</header>


<div class="container">
    <div class="col s10 m8 center">
        <h4 class="row">Login</h4>
        <div class="row">
            <form action="/usuario/autentication" method="post" class="col s12">
                <%
                    if (request.getParameter("erro").equals("login-invalido")) {
                %>
                <div onload="M.toast({html: 'Login não sucedido'})" class="rounded red"></div-->
                <%
                    } else {
                        %>
                        <h1></h1-->
                <%
                    }
                %>
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