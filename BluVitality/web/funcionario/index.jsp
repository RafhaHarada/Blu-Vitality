<%-- 
    Document   : index (funcionario)
    Created on : 26/08/2018, 17:47:02
    Author     : @Luana Patricia Duarte (luanapatricia.blu@hotmail.com)
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
            <%@include file="../model/tab.jsp" %>
        </ul>
        <%@include file="../model/tabConteudo.jsp" %>
    </div>
</div>
<jsp:include page="../model/footer.jsp"/>