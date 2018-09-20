<%-- 
    Document   : funcionarioTab
    Created on : 20/09/2018, 08:04:22
    Author     : Alunos
--%>
<%
    if (cargoDoFuncionario.equals("Administrador")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
<li class="tab"><a href="#Funcionarios2" class="teal-text">Acesso ao Prontuário</a></li>

<%
} else if (cargoDoFuncionario.equals("Medico")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
<li class="tab"><a href="#Funcionarios2" class="teal-text">Acesso ao Prontuário</a></li>

<%
} else if (cargoDoFuncionario.equals("Gerente")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
<li class="tab"><a href="#Funcionarios2" class="teal-text">Acesso ao Prontuário</a></li>

<%
} else if (cargoDoFuncionario.equals("Recepcao")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
<li class="tab"><a href="#Funcionarios2" class="teal-text">Acesso ao Prontuário</a></li>

<%
} else if (cargoDoFuncionario.equals("Limpeza")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>

<%
} else {
%>

<%
    }
%>