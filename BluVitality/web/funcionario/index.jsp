<%-- 
    Document   : index (funcionario)
    Created on : 26/08/2018, 17:47:02
    Author     : @Luana Patricia Duarte
                 @Gustavo Rodrigues (gugaaroodrigues@gmail.com)
                 @Rafael Alipio Harada (rafhaharada@gmail.com)

--%>

<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Op��es</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="/usuario/logout" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

<div class="row">
    <div class="">
        <ul class="tabs tabs-transparent center">
            <li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
                <%@include file="../model/tab.jsp" %>
        </ul>
        <div id="Funcionarios1" class="col s12 container">
            <ul class="collection col s6">
                <li class="collection-item avatar teal lighten-4">
                    <img src="" alt="" class="circle red">
                    <span class="nome">Nome:</span>
                    <span><%=usuario.getNome()%></span>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="data-nascimento">Data de nascimento:</span>
                    <span>
                        <% String dataEn[] = usuario.getData_nascimento().toString().split("-");
                            String dataBr = dataEn[2] + "/" + dataEn[1] + "/" + dataEn[0];
                        %>
                        <%=dataBr%>
                    </span>
                </li>
                <li class="collection-item teal lighten-4">
                    <span class="cpf">CPF:</span>
                    <span><%=usuario.getCpf()%></span>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="rg">RG:</span>
                    <span><%=usuario.getRg()%></span>
                </li>
                <li class="collection-item teal lighten-4">
                    <span class="naturalidade">Naturalidade:</span>
                    <span><%=usuario.getNaturalidade()%></span>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="sexo">Sexo:</span>
                    <span><%=usuario.getSexo()%></span>
                </li>
                <li class="collection-item teal lighten-4">
                    <span class="sanguineo">Tipo Sangu�neo:</span>
                    <span><%=usuario.getTipo_sanguineo()%></span>
                </li>
            </ul>
            <ul class="collection col s6">
                <li class="collection-item teal lighten-4">
                    <span class="cidade">Cidade:</span>
                    <span><%=usuario.getCidade()%></span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="uf">UF:</span>
                    <span><%=usuario.getUf()%></span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-4">
                    <span class="endereco">Endere�o</span>
                    <span><%=usuario.getEndereco()%></span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="email">Email:</span>
                    <span><%=usuario.getEmail()%></span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-4">
                    <span class="telefone">Telefone:</span>
                    <span><%=usuario.getTelefone()%></span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="contato-emergencia">Contato de emerg�ncia:</span>
                    <span><%=usuario.getContato_emergencia()%></span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-4">
                    <span class="estado-civil">Estado Civil:</span>
                    <span><%=usuario.getEstado_civil()%></span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
                <li class="collection-item teal lighten-5">
                    <span class="convenio">Covenio:</span>
                    <span><%=usuario.getConvenio()%></span>
                    <a href="#!" class="secondary-content"><i class="material-icons">edit</i></a>
                </li>
            </ul>
            <div class="col s1 right">
                <a class="btn-floating btn cyan pulse right margin-botao"><i class="material-icons">edit</i></a>
            </div>
        </div>
        <%@include file="../model/tabConteudo.jsp" %>
    </div>
</div>

</div>
</div>

<jsp:include page="../model/footer.jsp"/>