<%-- 
    Document   : custos
    Created on : 17/09/2018, 10:18:44
    Author     : Cidmar
--%>

<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="../" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>

<jsp:include page="../model/footer.jsp"/>
