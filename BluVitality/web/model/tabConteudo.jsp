<%-- 
    Document   : funcionarioTabConteudo
    Created on : 20/09/2018, 08:04:43
    Author     : Luana Patricia Duarte (luanapatricia.blu@hotmail.com)
                 Rafael Alipio Harada
--%> 

<%
    if (cargoDoFuncionario.equals("Administrador")) {
%>
<%@include file="tabsCargos/perfil.jsp" %>>
<%@include file="tabsCargos/prontuarioBusca.jsp" %>>
<%
} else if (cargoDoFuncionario.equals("Medico")) {
%>
<%@include file="tabsCargos/perfil.jsp" %>>
<%@include file="tabsCargos/prontuarioBusca.jsp" %>>
<%
}else if (cargosDoFuncionario.equal("Gerente")){
%>
<%@include file="tabsCargos/perfil.jsp" %>>
<%@include file="tabsCargos/prontuarioBusca.jsp" %>>
<%
} else if (cargoDoFuncionario.equals("Recepcao")) {
%>
<%@include file="tabsCargos/perfil.jsp" %>>
<%@include file="tabsCargos/prontuarioBusca.jsp" %>>
<%
} else if (cargoDoFuncionario.equals("Limpeza")) {
%>
<%@include file="tabsCargos/perfil.jsp" %>>
<%
} else {
%>

<%
    }
%>