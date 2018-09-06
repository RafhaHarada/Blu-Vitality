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
                        <input id="email_user" type="email"  class="validate" name="">
                        <label for="email_user">Email</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="password_user" type="password"  class="validate" name="">
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
    <form action="/usuarios/store" method="POST">
        <div class="row">
            <div class="input-field col s12 m7">
                <i class="material-icons prefix">account_circle</i>
                <input id="cadastro-nome-completo" type="text" class="validate" name="nome-completo">
                <label for="cadastro-nome-completo">Nome Completo</label>
            </div>
            <div class="col s12 m4 right">
                <div class="file-field input-field">
                    <div class="btn">
                        <i class="material-icons left">photo</i>
                        <span class="right">Foto</span>
                        <input type="file" id="cadastro-foto" name="foto">
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m2">
                <i class="material-icons prefix">date_range</i>
                <input id="cadastro-idade" type="number" class="validate" min="0" max="100" name="idade">
                <label for="cadastro-idade">Idade</label>
            </div>
            <div class="input-field col s12 m5">
                <i class="material-icons prefix">date_range</i>
                <input name="data-nascimento" id="cadastro-data-nascimento" type="text" class="datepicker validate" min="01/01/1905" max="01/01/2130">
                <label for="cadastro-data-nascimento">Data de Nascimento</label>
            </div>

            <div class="col s11 m5">
                <div class="col s3">
                    <span for="cadastro-sexo" class="flow-text">Sexo</span>
                </div>
                <div class="col s9">
                    <label>
                        <input class="blue" id="cadastro-sexo" name="sexo" type="radio" value="M" checked />
                        <span>Masculino</span>
                    </label>
                    <label>
                        <input class="pink" id="cadastro-sexo" name="sexo" type="radio" value="F"/>
                        <span>Feminino</span>
                    </label>
                    <label>
                        <input class="pink" id="cadastro-sexo" name="sexo" type="radio" value="I"/>
                        <span>Não Tenho Certeza</span>
                    </label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m6">
                <i class="material-icons prefix">email</i>
                <input id="cadastro-email" type="text" class="validate" name="email">
                <label for="cadastro-email">Email</label>
            </div>
            <div class="input-field col s12 m3">
                <i class="material-icons prefix">art_track</i>
                <input id="cadastro-cpf" type="text" class="validate" name="cpf">
                <label for="cadastro-cpf">CPF</label>
            </div>
            <div class="input-field col s12 m3">
                <i class="material-icons prefix">art_track</i>
                <input id="cadastro-rg" type="tel" class="validate" name="rg">
                <label for="cadastro-rg">RG</label>
            </div>

        </div>
        <div class="row">
            <div class="input-field col s6 m4">
                <i class="material-icons prefix">location_city</i>
                <input id="cadastro-naturalidade" type="tel" class="validate" name="naturalidade">
                <label for="cadastro-naturalidade">Naturalidade</label>
            </div>
            <div class="input-field col s6 m4">
                <i class="material-icons prefix">location_city</i>
                <input id="cadastro-uf" type="text"  class="validate" name="uf">
                <label for="cadastro-uf">UF</label>
            </div>

            <div class="input-field col s12 m4 right">
                <i class="material-icons prefix">phone</i>
                <input id="cadastro-telefone" type="tel"  class="validate" name="telefone">
                <label for="cadastro-telefone">Telefone</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m8">
                <i class="material-icons prefix">location_on</i>
                <input id="cadastro-endereco" type="tel"  class="validate" name="endereco">
                <label for="cadastro-endereco">Endereço</label>
            </div>
            <div class="input-field col s12 m4 right">
                <i class="material-icons prefix">phone</i>
                <input id="cadastro-contato-emergencia" type="tel"  class="validate" name="contato-emergencia">
                <label for="cadastro-contato-emergencia">Contato de Emergência</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m4">
                <i class="material-icons prefix">colorize</i>
                <input id="cadastro-tipo-sanguineo" type="text"  class="validate" name="tipo-sanguineo">
                <label for="cadastro-tipo-sanguineo">Tipo Sanguíneo</label>
            </div>
            <div class="input-field col s12 m8">
                <i class="material-icons prefix">phone</i>
                <input id="cadastro-convenio" type="tel"  class="validate" name="convenio">
                <label for="cadastro-convenio">Convênio</label>
            </div>
        </div>
        <div class="row col s12 center input-field">
            <input type="submit" class="btn col s4" value="Cadastrar">
        </div>
    </form>
</div>

<jsp:include page="../model/footer.jsp"/>