<%-- 
    Document   : CadastroFuncionario
    Created on : 23/09/2018, 19:08:56
    Author     : Gus
--%>

<%@page import="br.com.Sistema.DAO.CargosDAO"%>
<%@page import="br.com.Sistema.Bean.CargosBean"%>
<%@page import="br.com.Sistema.DAO.FuncionarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.com.Sistema.Bean.FuncionarioBean"%>
<%@page import="br.com.Sistema.Bean.UsuarioBean"%>
<%@page import="br.com.Sistema.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="input-field col s12">
    <select>
        <option value="" disabled selected id="novofunc">Novo Funcionário</option>
        <%
            List<UsuarioBean> novoFuncionario = new UsuarioDAO().obterTodos();
            FuncionarioBean funcionarioNovo = new FuncionarioBean();

            for (int i = 0; i   < novoFuncionario.size(); i++) {
                funcionarioNovo = new FuncionarioDAO().obterPeloIdUsuario(novoFuncionario.get(i).getId());
                If(funcionarioNovo.getTipo() == ""){
        %>
        <option value="<%=funcionarioNovo.getId()%>"><%=funcionarioNovo.getNome()%></option>
        <%
                }
            }
        %>
    </select>
    <label for="functipo">Novo Funcionário</label>
</div>
<div class="input-field col s12">
    <select id="functipo">
        <option value="" disabled selected>Escolha o tipo de funcionário</option>
        <option value="funcionario">Funcionario</option>
        <option value="administrador">Funcionario</option>

    </select>
    <label>Tipo</label>
</div>
<div class="input-field col s12">
    <select id="cargofunc">
        <option value="" disabled selected>Cargo</option>
        <%
            List<CargosBean> cargoFuncionario = new CargosDAO().obterTodos();

            for (int i = 0; i  < cargoFuncionario.size(); i++) {


        %>
        <option value="<%=cargoFuncionario.get(i).getId()%>"><%=cargoFuncionario.get(i).getNome()%></option>
        <%
            }
        %>
    </select>
    <label>Novo Funcionário</label>
</div>