<%--
    Document   : cadastrar
    Created on : 29/08/2018, 19:17:38
    Author     : Rafael Alipio Harada (rafhaharada@gmail.com)
--%>
<%@page import="br.com.Sistema.Bean.FuncionariosBean"%>
<%@page import="br.com.Sistema.DAO.FuncionariosDAO"%>
<%@page import="br.com.Sistema.Bean.UsuariosBean"%>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="#Entrar">Login</a></li>
        <li><a href="../">Voltar a página inicial</a></li>
    </ul>
</li>
<jsp:include page="../model/headerEndNoSidenav.jsp"/>
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
                        <input required id="email_user" type="email"  class="validate" name="">
                        <label for="email_user">Email</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input required id="password_user" type="password"  class="validate" name="">
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
    <form action="/usuario/store" method="POST">
        <ul class="collapsible popout">
            <li class="active">
                <div class="collapsible-header"><i class="material-icons">filter_drama</i>Informações de Login</div>
                <div class="collapsible-body">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">account_circle</i>
                        <input required id="cadastro-login" type="text" class="validate tooltipped" name="login" data-position="top" data-tooltip="Este será usado apenas para acessar o site!">
                        <label for="cadastro-login">Login</label>
                        <span class="helper-text" data-error="Insira um login" data-success="Correto"></span>
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">account_circle</i>
                        <input required id="cadastro-senha" type="password" class="validate" name="senha">
                        <label for="cadastro-senha">Senha</label>
                        <span class="helper-text" data-error="Insira uma senha" data-success="Correto"></span>
                    </div>
                </div>
            </li>
            <li class="usuarioStep">
                <div class="collapsible-header"><i class="material-icons">art_track</i>Informações do Usuário</div>
                <div class="collapsible-body">
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input required id="cadastro-nome-completo" type="text" class="validate" name="nome-completo">
                            <label for="cadastro-nome-completo">Nome Completo</label>
                            <span class="helper-text" data-error="Insira o nome completo" data-success="Correto"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
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
                        <div class="input-field col s12 m6">
                            <i class="material-icons prefix">date_range</i>
                            <input required name="data-nascimento" id="cadastro-data-nascimento" type="text" class="datepicker validate" min="01/01/1905" max="01/01/2130">
                            <label for="cadastro-data-nascimento">Data de Nascimento</label>
                            <span class="helper-text" data-error="Insira sua data de nascimento" data-success="Correto"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 m4 left">
                            <select required id="cadastro-sexo" name="sexo">
                                <option value="" disabled selected>Selecione o sexo</option>
                                <option value="1">Feminino</option>
                                <option value="2">Masculino</option>
                                <option value="3">Indefinido</option>
                            </select>
                            <label for="cadastro-sexo">Sexo</label>
                            <span class="helper-text" data-error="Insira seu sexo" data-success="Correto"></span>
                        </div>
                        <div class="input-field col s12 m4 center">
                            <select required name="estado-civil" id="cadastro-estado-civil">
                                <option value="" disabled selected>Selecione seu estado civil</option>
                                <option value="1">Solteiro(a)</option>
                                <option value="2">Casado(a)</option>
                                <option value="3">Divorciado(a)</option>
                                <option value="4">Viúvo(a)</option>
                                <option value="5">Separado(a)</option>
                            </select>
                            <label for="cadastro-estado-civil">Estado Civil</label>
                            <span class="helper-text" data-error="Insira seu estado civil" data-success="Correto"></span>
                        </div>
                        <div class="input-field col s12 m4 right">
                            <select required id="cadastro-tipo-sanguineo" name="tipo-sanguineo">
                                <option value="" disabled selected>Selecione seu tipo sanguíneo</option>
                                <option value="1">A+</option>
                                <option value="2">A-</option>
                                <option value="3">B+</option>
                                <option value="4">B-</option>
                                <option value="5">AB+</option>
                                <option value="6">AB-</option>
                                <option value="7">O+</option>
                                <option value="8">O-</option>
                            </select>
                            <label for="cadastro-tipo-sanguineo">Tipo Sanguíneo</label>
                            <span class="helper-text" data-error="Insira seu tipo sanguíneo" data-success="Correto"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 m6 left">
                            <i class="material-icons prefix">art_track</i>
                            <input required id="cadastro-cpf" type="text" class="validate" name="cpf" minlength="14">
                            <label for="cadastro-cpf">CPF</label>
                            <span class="helper-text" data-error="Insira o cpf" data-success="Correto"></span>
                        </div>
                        <div class="input-field col s12 m6 right">
                            <i class="material-icons prefix">art_track</i>
                            <input required id="cadastro-rg" type="tel" class="validate" name="rg">
                            <label for="cadastro-rg">RG</label>
                            <span class="helper-text" data-error="Insira o rg" data-success="Correto"></span>
                        </div>
                    </div>
                </div>
            </li>
            <li class="localizacaoStep">
                <div class="collapsible-header"><i class="material-icons">place</i>Localização e Contatos</div>
                <div class="collapsible-body">
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">email</i>
                            <input id="cadastro-email" type="text" class="validate" name="email">
                            <label for="cadastro-email">Email</label>
                            <span class="helper-text" data-error="Formato inválido" data-success="Correto"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 m6 left">
                            <i class="material-icons prefix">phone</i>
                            <input required id="cadastro-telefone" type="tel"  class="validate" name="telefone">
                            <label for="cadastro-telefone">Telefone</label>
                            <span class="helper-text" data-error="Insira seu telefone" data-success="Correto"></span>
                        </div>
                        <div class="input-field col s12 m6 right">
                            <i class="material-icons prefix">phone</i>
                            <input required id="cadastro-contato-emergencia" type="tel"  class="validate" name="contato-emergencia">
                            <label for="cadastro-contato-emergencia">Contato de Emergência</label>
                            <span class="helper-text" data-error="Erro" data-success="Correto"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">location_on</i>
                            <input required id="cadastro-endereco" type="tel"  class="validate" name="endereco">
                            <label for="cadastro-endereco">Endereço</label>
                            <span class="helper-text" data-error="Insira seu endereço" data-success="Correto"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6 m3">
                            <i class="material-icons prefix">location_city</i>
                            <input required id="cadastro-naturalidade" type="tel" class="validate" name="naturalidade">
                            <label for="cadastro-naturalidade">Naturalidade</label>
                            <span class="helper-text" data-error="Insira a sua naturalidade" data-success="Correto"></span>
                        </div>
                        <div class="input-field col s6 m3">
                            <i class="material-icons prefix">location_city</i>
                            <input required id="cadastro-uf" type="text"  class="validate" name="uf">
                            <label for="cadastro-uf">UF</label>
                            <span class="helper-text" data-error="Insira a uf" data-success="Correto"></span>
                        </div>
                        <div class="input-field col s12 m6">
                            <i class="material-icons prefix">location_on</i>
                            <input id="cadastro-complemento" type="tel"  class="validate" name="complemento">
                            <label for="cadastro-complemento">Complemento</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">phone</i>
                            <input required id="cadastro-convenio" type="tel"  class="validate" name="convenio">
                            <label for="cadastro-convenio">Convênio</label>
                            <span class="helper-text" data-error="Insira seu tipo de convênio" data-success="Correto"></span>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
            <input type="submit" class="btn col s4 validate" value="Cadastrar">
    </form>
</div>

<jsp:include page="../model/footer.jsp"/>