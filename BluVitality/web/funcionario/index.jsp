<%-- 
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     : @Luana Patricia Duarte
    @Gustavo Rodrigues (gugaaroodrigues@gmail.com) 
    @Rafhael

--%>
<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="../" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<%@include file="../model/sessionConfirm.jsp" %>

<div class="row">
    <div class="">
        <ul class="tabs tabs-transparent center">
            <li class="tab"><a href="#Servicos1" class="active teal-text">Perfil</a></li>
            <li class="tab"><a href="#Servicos2" class="teal-text">Acesso ao Prontuário</a></li>
            <li class="tab"><a href="#Servicos3" class="teal-text">Cursos e Eventos</a></li>
        </ul>

        <div id="Servicos1" class="col s12 container">
            <ul class="collection col s6">
                <li class="collection-item avatar teal lighten-4">
                    <img src="" alt="" class="circle red">
                    <span class="nome">Nome:</span>
                    <span></span>

                </li>
                <li class="collection-item teal lighten-5">
                    <span class="data-nascimento">Data de nascimento:</span>
                    <span></span>


                </li>
                <li class="collection-item teal lighten-4">
                    <span class="cpf">CPF:</span>
                    <span></span>


                </li>
                <li class="collection-item teal lighten-5">
                    <span class="rg">RG:</span>
                    <span></span>

                </li>
                <li class="collection-item teal lighten-4">
                    <span class="naturalidade">Naturalidade:</span>
                    <span></span>


                </li>
                <li class="collection-item teal lighten-5">
                    <span class="sexo">Sexo:</span>
                    <span></span>

                </li>
                <li class="collection-item teal lighten-4">
                    <span class="sanguineo">Tipo Sanguíneo:</span>
                    <span></span>

                </li>
            </ul>
            <ul class="collection col s6">
                <li class="collection-item teal lighten-4">
                    <span class="cidade">Cidade:</span>
                    <span> </span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="uf">UF:</span>
                    <span> </span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>

                </li>
                <li class="collection-item teal lighten-4">
                    <span class="endereco">Endereço</span>
                    <span> </span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>

                </li>
                <li class="collection-item teal lighten-5">
                    <span class="email">Email:</span>
                    <span> </span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>

                </li>
                <li class="collection-item teal lighten-4">
                    <span class="telefone">Telefone:</span>
                    <span> </span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>

                </li>
                <li class="collection-item teal lighten-5">
                    <span class="contato-emergencia">Contato de emergência:</span>
                    <span> </span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-4">
                    <span class="estado-civil">Estado Civil:</span>
                    <span> </span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="convenio">Covenio:</span>
                    <span> </span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
            </ul>


            <div class="col s1 right">
                <a class="btn-floating btn cyan pulse right margin-botao"><i class="material-icons">edit</i></a>
            </div>
        </div>
    </div>
    <div id="Sobre2" class="col s12 container ">

    </div>
    <div id="Servicos2" class="scrollBarOnDiv">
        <div class="prontuarioBusca container">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <input placeholder="Digite aqui" id="nome" type="text" class="validate">
                        <label for="nome">Nome</label>
                    </div>
                   

                </div>  
            </form> 
            <div>
                <a class="btn teal botaoBuscar">Busca Prontuário</a>
            </div>
        </div>
        <div class="prontuarioResultado container">
            <div class="col s12">
                <div class="row">
                    <div class="col s6">
                        <div class="teal-text flow-text">
                            <ul class="collapsible">
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">filter_drama</i>Dados Pessoais</div>
                                    <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                </li>
                                <li>
                                    <div class="collapsible-header"><i class="material-icons"></i>Dados Clínicos</div>
                                    <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                </li>
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">whatshot</i>Histórico Clínico</div>
                                    <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                            
                            </ul>

                        </div>
                    </div>

                </div>  
            </div> 
            <div>
                <a class="btn teal botaoVoltar">Voltar as Buscas</a>
            </div>
        </div>

    </div>
</div>     
<div id="Servicos3" class="col s12 container">
    <table class="striped teal lighten-4">
        <thead>
            <tr>
                <th>Cursos</th>
                <th>Data</th>
                <th>Local</th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <td>Palestra 1</td>
                <td>01/01/2019</td>
                <td>Hospital Blu Vitality</td>
            </tr>
            <tr>
                <td>Palestra 2</td>
                <td>05/10/2018</td>
                <td>Hospital Blu Vitality</td>
            </tr>
            <tr>
                <td>Palestra 3</td>
                <td>10/12/2018</td>
                <td>Hospital Blu Vitality</td>
            </tr>
        </tbody>
    </table>
</div>

<jsp:include page="../model/footer.jsp"/>