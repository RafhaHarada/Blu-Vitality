<%-- 
    Document   : sidenavcard
    Created on : 27/08/2018, 11:15:48
    Author     : Rafael Alipio Harada
--%>

<%@page import="br.com.Sistema.DAO.CargosDAO"%>
<%@page import="br.com.Sistema.Bean.CargosBean"%>
<%@page import="br.com.Sistema.Bean.FuncionariosBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.Sistema.DAO.FuncionariosDAO"%>
<%@page import="java.util.List"%>
<!--JSP IF implementation.-->
<%
    int id_usuario = 0/*Integer.parseInt(request.getParameter("id"))*/;
    List<FuncionariosBean> funcionarios = new FuncionariosDAO().obterTodos();
    String cargoDoFuncionario = "";
    for (int i = 0; i < 10; i++) {
        if (id_usuario == funcionarios.get(i).getId_usuario()) {
            int id_cargo = funcionarios.get(i).getId_cargo();
            cargoDoFuncionario = new CargosDAO().obterPeloId(id_cargo).getNome();
            break;
        }
    }
    if (cargoDoFuncionario.equals("Administração")) {
%>
<li>
    <div class="user-view">
        <div class="background">
            <img src="../resources/images/slider1.jpg">
        </div>
        <a href="#Entrar"><img class="circle" src="../resources/images/Gameboy_Nyan_Cat.gif"></a>
        <a href="#Entrar"><span class="white-text">Administração</span></a>
        <a href="#Cadastrar"><span class="white-text">admin@admin.com</span></a>
    </div>
</li>
<li>
    <a href='#'>Perfil</a>
</li>
<li>
    <a href='#'>Pendências</a>
</li>
<li>
    <a href='#'>Funcionários</a>
</li>
<li>
    <a href='#'>Pacientes</a>
</li>
<%
} else if (cargoDoFuncionario.equals("Médico")) {
%>
<li>
    <div class="user-view">
        <div class="background">
            <img src="../resources/images/bg1.gif">
        </div>
        <a href="#user"><img class="circle" src="../resources/images/cat6.gif"></a>
        <a href="#name"><span class="white-text name">Médico</span></a>
        <a href="#email"><span class="white-text email">medico@medico.com</span></a>
    </div>
</li>
<li>
    <a href='#'>Perfil</a>
</li>
<li>
    <a href='#'>Pendências</a>
</li>
<li>
    <a href='#'>Pacientes</a>
</li>
<%
} else if (cargoDoFuncionario.equals("Recepção")) {
%>
<li>
    <div class="user-view">
        <div class="background">
            <img src="../resources/images/bg1.gif">
        </div>
        <a href="#user"><img class="circle" src="../resources/images/cat6.gif"></a>
        <a href="#name"><span class="white-text name">Recepção</span></a>
        <a href="#email"><span class="white-text email">recepcao@recepcao.com</span></a>
    </div>
</li>
<li>
    <a href='#'>Perfil</a>
</li>
<li>
    <a href='#'>Pendências</a>
</li>
<li>
    <a href='#'>Pacientes</a>
</li>
<%
} else if (cargoDoFuncionario.equals("Limpeza")) {
%>
<li>
    <div class="user-view">
        <div class="background">
            <img src="../resources/images/bg1.gif">
        </div>
        <a href="#user"><img class="circle" src="../resources/images/cat6.gif"></a>
        <a href="#name"><span class="white-text name">Limpeza</span></a>
        <a href="#email"><span class="white-text email">limpeza@limpeza.com</span></a>
    </div>
</li>
<li>
    <a href='#'>Perfil</a>
</li>
<li>
    <a href='#'>Pendências</a>
</li>
<%
    }else {
%>
<li>
    <div class="user-view">
        <div class="background">
            <img src="../resources/images/bg1.gif">
        </div>
        <a href="#user"><img class="circle" src="../resources/images/cat6.gif"></a>
        <a href="#signin"><span class="white-text name">Entrar</span></a>
        <a href="#signup"><span class="white-text email">Cadastrar</span></a>
    </div>
</li>
<%
    }
%>