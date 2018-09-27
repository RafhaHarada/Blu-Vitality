<%-- 
    Document   : custos
    Created on : 17/09/2018, 10:18:44
    Author     : Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
--%>

<jsp:include page="../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="../" onclick="signOut();">Sair</a></li>
    </ul>
</li>
<%@include file="../model/headerEnd.jsp" %>
<div class="row">
    <form class="col s12">
      <div class="row">
        <div class="input-field col s12">
          <textarea id="textarea1" class="materialize-textarea"></textarea>
          <label for="textarea1">Energia elétrica</label>
        </div>
      </div>
    </form>
  </div>
<jsp:include page="../model/footer.jsp"/>
