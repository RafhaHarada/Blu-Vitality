<%-- 
    Document   : funcionarioTabConteudo
    Created on : 20/09/2018, 08:04:43
    Author     : Alunos
--%> 

<%
    if (cargoDoFuncionario.equals("Administrador")) {
%>
<%@include file="tabsCargos/prontuarioBusca.jsp" %>>
<%
} else if (cargoDoFuncionario.equals("Medico")) {
%>
<%@include file="tabsCargos/prontuarioBusca.jsp" %>>
<%
} else if (cargoDoFuncionario.equals("Recepcao")) {
%>
<%@include file="tabsCargos/prontuarioBusca.jsp" %>>
<%
} else if (cargoDoFuncionario.equals("Limpeza")) {
%>

<%
} else {
%>

<%
    }
%>