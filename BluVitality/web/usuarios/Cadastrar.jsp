<%--
    Document   : Cadastrar
    Created on : 29/08/2018, 19:17:38
    Author     : Rafael Alipio Harada (rafhaharada@gmail.com)
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
                        <div class="g-signin2 modal-close" data-onsuccess="onSignIn"></div>
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
<div class="row"></div>
<div class="container col s12">
    <form action="/doGetForm1" method="get">
        <div class="row">
            <div class="input-field col s12 m12">
                <i class="material-icons prefix">account_circle</i>
                <input id="icon_prefix" type="text" class="validate">
                <label for="icon_prefix">Nome Completo</label>
            </div>
            <div class="col s1">
            </div>
            <div class="col s11 m5">
                <span for="group1" class="large ">Sexo</span>
                <br>
                <label>
                    <input class="blue-text" name="group1" type="radio" value="Homem" checked />
                    <span>Homem</span>
                </label>
                <br>
                <label>
                    <input class="pink-text" name="group1" type="radio" value="Mulher"  />
                    <span>Mulher</span>
                </label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">account_circle</i>
                <input id="icon_prefix" type="number" class="validate" min="1" max="100">
                <label for="icon_prefix">Idade</label>
            </div>
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">phone</i>
                <input id="icon_telephone" type="text" class="datepicker validate" min="01/01/1905" max="01/01/2130">
                <label for="icon_telephone">Data de Nascimento</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">account_circle</i>
                <input id="icon_prefix" type="text" class="validate">
                <label for="icon_prefix">CPF</label>
            </div>
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">phone</i>
                <input id="icon_telephone" type="tel" class="validate">
                <label for="icon_telephone">RG</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">account_circle</i>
                <input id="icon_prefix" type="text" class="validate">
                <label for="icon_prefix">Email</label>
            </div>
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">phone</i>
                <input id="icon_telephone" type="tel" class="validate">
                <label for="icon_telephone">Naturalidade</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s2 m3">
                <i class="material-icons prefix">account_circle</i>
                <input id="icon_prefix" type="text" class="validate">
                <label for="icon_prefix">UF</label>
            </div>
            <div class="input-field col s10 m9">
                <i class="material-icons prefix">phone</i>
                <input id="icon_telephone" type="tel" class="validate">
                <label for="icon_telephone">Endereço</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">account_circle</i>
                <input id="icon_prefix" type="text" class="validate">
                <label for="icon_prefix">Complemento</label>
            </div>
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">phone</i>
                <input id="icon_telephone" type="tel" class="validate">
                <label for="icon_telephone">Endereço</label>
            </div>
        </div>
    </form>
</div>

<jsp:include page="../model/footer.jsp"/>