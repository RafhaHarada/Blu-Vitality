<%--
    Document   : Cadastrar
    Created on : 29/08/2018, 19:17:38
    Author     : Admin
--%>

<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="#Entrar">Login</a></li>
        <li><a href="../">Voltar</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<!--Modal Login/Cadastro-->
<div id="Entrar" class="modal">
    <div class="modal-content">
        <h4 class="row">Login</h4>
        <div class="row">
            <form class="col s12">
                <div class="row">
                    <div class="col s12 m5 btn white left">
                        <a href="#" class="red-text">Login com Google+</a>
                    </div>
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
</div>
<!--Conteúdo-->
<form action="/doGetForm1" method="get">
    <ul class="stepper linear">
        <li class="step active">
            <div class="step-title waves-effect">E-mail</div>
            <div class="step-content">
                <div class="row">
                    <div class="input-field col s12">
                        <input id="email" name="email" type="email" class="validate" required>
                        <label for="first_name">Your e-mail</label>
                    </div>
                </div>
                <div class="step-actions">
                    <button class="waves-effect waves-dark btn next-step">CONTINUE</button>
                </div>
            </div>
        </li>
        <li class="step">
            <div class="step-title waves-effect">Passo 2</div>
            <div class="step-content">
                <div class="row">
                    <div class="input-field col s12">
                        <input id="password" name="password" type="password" class="validate" required>
                        <label for="password">Your password</label>
                    </div>
                </div>
                <div class="step-actions">
                    <button class="waves-effect waves-dark btn next-step">CONTINUE</button>
                    <button class="waves-effect waves-dark btn-flat previous-step">BACK</button>
                </div>
            </div>
        </li>
        <li class="step">
            <div class="step-title waves-effect">Fim!</div>
            <div class="step-content">
                Finish!
                <div class="step-actions">
                    <button class="waves-effect waves-dark btn" type="submit">SUBMIT</button>
                </div>
            </div>
        </li>
    </ul>
</form>
</ul>



<jsp:include page="../model/footer.jsp"/>