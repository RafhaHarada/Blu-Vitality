<%-- 
    Document   : funcionarioTab
    Created on : 20/09/2018, 08:04:22
    Author     : Alunos
--%>

<%
    if (cargoDoFuncionario.equals("Administrador")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
<li class="tab"><a href="#Funcionarios2" class="teal-text">Acesso ao Prontu�rio</a></li>
<li class="tab"><a href="#Funcionarios3" class="teal-text">Agendamentos</a></li>
<li class="tab"><a href="#Funcionarios4" class="teal-text">Consultas/Exames Futuros</a></li>

<%
} else if (cargoDoFuncionario.equals("Medico")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
<li class="tab"><a href="#Funcionarios2" class="teal-text">Acesso ao Prontu�rio</a></li>
<li class="tab"><a href="#Funcionarios4" class="teal-text">Consultas/Exames Futuros</a></li>

<%
} else if (cargoDoFuncionario.equals("Gerente")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
<li class="tab"><a href="#Funcionarios2" class="teal-text">Acesso ao Prontu�rio</a></li>
<li class="tab"><a href="#Funcionarios3" class="teal-text">Agendamentos</a></li>
<li class="tab"><a href="#Funcionarios4" class="teal-text">Consultas/Exames Futuros</a></li>

<%
} else if (cargoDoFuncionario.equals("Recepcao")) {
%>
<li class="tab"><a href="#Funcionarios1" class="active teal-text">Perfil</a></li>
<li class="tab"><a href="#Funcionarios2" class="teal-text">Acesso ao Prontu�rio</a></li>
<li class="tab"><a href="#Funcionarios3" class="teal-text">Agendamentos</a></li>
<li class="tab"><a href="#Funcionarios4" class="teal-text">Consultas/Exames Futuros</a></li>

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