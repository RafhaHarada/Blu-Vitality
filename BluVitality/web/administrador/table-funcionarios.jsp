<%-- 
    Document   : table-funcionarios
    Created on : 11/09/2018, 14:29:56
    Author     : Gus
--%>

<nav>
    <div class="nav-wrapper teal lighten-4">
        <form>
            <div class="input-field ">
                <input id="searchFuncionario"  type="search" required>
                <label class="label-icon " for="search"><i class="material-icons">search</i></label>
                <i class="material-icons">close</i>
            </div>
        </form>
    </div>
</nav>
<% List<FuncionariosBean> funcionarios = new FuncionariosDAO().obterTodos();%>
<table class="responsive-table center">
    <thead>
        <tr>
            <th>Funcionario</th>
            <th>Função</th>
            <th>Ação</th>
        </tr>
    </thead>
    <tbody>
        <% for (FuncionariosBean funcionario : funcionarios) {%>
        <tr>
            <td><%=funcionario.getUsuario().getNome()%></td>
            <td><%=funcionario.getCargo().getNome()%></td>
            <td><a href=""><i class="material-icons">edit</i></a><a href=""><i class="material-icons">delete</i></a></td>
        </tr>
        <% }%>
    </tbody>
    <tfoot>
        <tr>
        </tr>
    </tfoot>
</table>  