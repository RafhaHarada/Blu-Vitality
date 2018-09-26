<%-- 
    Document   : CadastroFuncionario
    Created on : 23/09/2018, 19:08:56
    Author     : Gus
--%>

<%@page import="br.com.Sistema.Bean.UsuarioBean"%>
<%@page import="br.com.Sistema.DAO.UsuariosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>
        <link rel='stylesheet' type='text/css' href='../resources/css/materialize.min.css'>
        <link rel='stylesheet' type='text/css' href='../resources/css/custom.css'>
        <link rel='stylesheet' type='text/css' href='../resources/css/loading.css'>
        <title>Novo Funcionario</title>
    </head>
    <body>
        <div class="container col s12" id="cadastro-funcionario">
            <div class="row"></div>
            <%
                UsuarioBean usuario = new UsuariosDAO().obterPeloId(1);
            %>
            <form class="form-group" id="testform">
                <div class="row">
                    <div class="input-field col s12 m7">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="cadastro-nome-completo" type="text" class="minhaclasse" disabled="disabled" value="<%=usuario.getNome()%>" name="nome-completo">
                        <label for="cadastro-nome-completo">Nome Completo</label>
                    </div>
                    <div class="col s5">
                        <span>Sexo</span>
                        <label>
                            <input class="minhaclasse" disabled="disabled" id="cadastro-sexo" name="sexo" type="radio" value="M" />
                            <span>Masculino</span>
                        </label>
                        <label>
                            <input class="minhaclasse" disabled="disabled" id="cadastro-sexo" name="sexo" type="radio" value="F"/>
                            <span>Feminino</span>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 m6">
                        <i class="material-icons prefix">email</i>
                        <input id="cadastro-email" type="text" class="validate minhaclasse" disabled="disabled" name="email">
                        <label for="cadastro-email">Email</label>
                    </div>
                    <div class="input-field col s12 m3">
                        <i class="material-icons prefix">art_track</i>
                        <input id="cadastro-cpf" type="number" class="minhaclasse" disabled="disabled">
                        <label for="cadastro-cpf">CPF</label>
                    </div>
                    <div class="input-field col s12 m3">
                        <i class="material-icons prefix">art_track</i>
                        <input id="cadastro-rg" type="number" class="validate minhaclasse" disabled="disabled" name="rg">
                        <label for="cadastro-rg">RG</label>
                    </div>

                </div>
                <div class="row">
                    <div class="input-field col s12 m2">
                        <i class="material-icons prefix">date_range</i>
                        <input id="cadastro-idade" type="number" class="validate minhaclasse" disabled="disabled" min="0" max="100" name="idade">
                        <label for="cadastro-idade">Idade</label>
                    </div>
                    <div class="input-field col s12 m3">
                        <i class="material-icons prefix">date_range</i>
                        <input name="estado-civil" id="cadastro-estado-civil" type="text" class="validate minhaclasse" disabled="disabled">
                        <label for="cadastro-estado-civil">Estado Civil</label>
                    </div>
                    <div class="input-field col s12 m4 right">
                        <i class="material-icons prefix">phone</i>
                        <input id="cadastro-telefone" type="tel"  class="validate minhaclasse" disabled="disabled" name="telefone">
                        <label for="cadastro-telefone">Telefone</label>
                    </div>
                    <div class="col s11 m5">

                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s12 m7">
                        <i class="material-icons prefix">location_on</i>
                        <input id="cadastro-endereco" type="tel"  class="validate minhaclasse" disabled="disabled" name="endereco">
                        <label for="cadastro-endereco">Endereço</label>
                    </div>
                    <div class="input-field col s6 m4">
                        <i class="material-icons prefix">location_city</i>
                        <input id="cadastro-cep" type="NUMBER" class="validate minhaclasse" disabled="disabled" name="CEP">
                        <label for="cadastro-cep">CEP</label>
                    </div>
                    <div class="input-field col s12 m3">
                        <i class="material-icons prefix">location_on</i>
                        <input id="cadastro-complemento" type="tel"  class="validate minhaclasse" disabled="disabled" name="complemento">
                        <label for="cadastro-complemento">Complemento</label>
                    </div>
                    <div class="input-field col s6 m4">
                        <i class="material-icons prefix">location_city</i>
                        <input id="cadastro-naturalidade" type="tel" class="validate minhaclasse" disabled="disabled" name="naturalidade">
                        <label for="cadastro-naturalidade">Naturalidade</label>
                    </div>
                    <div class="input-field col s6 m4">
                        <i class="material-icons prefix">location_city</i>
                        <input id="cadastro-uf" type="text"  class="validate minhaclasse" disabled="disabled" name="uf">
                        <label for="cadastro-uf">UF</label>
                    </div>

                </div>
            </form>
        </div>
        <divide>
        <div class="row col s12 m5">
            <i class="material-icons prefix"></i>
            <input id="cadastro-endereco" type="tel"  class="validate" disabled="disabled" name="cargo">
            <label for="cadastro-endereco">Cargo</label>
        </div>


        <script src="js-adm/acao-cancelar.js"></script>
        <script type="text/javascript" src="../resources/js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../resources/js/materialize.min.js"></script>
        <script type="text/javascript" src="../resources/js/google-platform.js"></script>
        <script type="text/javascript" src="../resources/js/custom.js"></script>
    </body>
</html>
