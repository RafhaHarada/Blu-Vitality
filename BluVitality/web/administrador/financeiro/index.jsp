<%-- 
    Document   : index
    Created on : 29/09/2018, 23:01:20
    Author     : Admin
--%>

<%@page import="br.com.Sistema.DAO.LucroDAO"%>
<%@page import="br.com.Sistema.Bean.LucroBean"%>
<%@page import="java.util.Calendar"%>
<jsp:include page="../../model/headerStart.jsp"/>
<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Op��es</a>
    <!-- Dropdown Structure -->
    <ul id='dropdownCadastro' class='dropdown-content'>
        <li><a href="#Entrar">Login</a></li>
        <li><a href="../">Voltar a p�gina inicial</a></li>
    </ul>
</li>
<%@include file="../../model/headerEnd.jsp" %>
<div class="row">
    <a href="index.jsp" class="waves-effect waves-light teal lighten-2 btn-small right" id="btnAdm">Voltar</a>
    <div class="container col s12">
        <ul class="tabs tabs-transparent center ">
            <li class="tab"><a href="#financasLista" class="active red-text waves-effect">Listas Financeiras</a></li>
            <li class="tab"><a href="#financasGerenciamento" class="red-text waves-effect">Gerenciamento Financeiro</a></li>
        </ul>
        <div class="divider"></div>
        <div id="financasLista" class="col s12 container">
            <div class="row">

                <table>
                    <thead>
                        <tr><
                            <th>Dia de Cadastro</th>
                            <th>Custos - Manuten��o</th>
                            <th>Custos - Funcion�rios</th>
                            <th>Receitas - Pagamentos a vista</th>
                            <th>Receitas - Pagamentos Convenio</th>
                            <th>Lucro</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<LucroBean> lucros = new ArrayList<>();
                            for (int i = 0; i < lucros.size(); i++) {
                        %>
                        <tr>
                            <td><%=lucros.get(i).getDataLucro().getTime()%></td>
                            <td><%=lucros.get(i).getCusto().getManutencao()%></td>
                            <td><%=lucros.get(i).getCusto().getSalarioFuncionarios()%></td>
                            <td><%=lucros.get(i).getReceita().getPagamentoAVista()%></td>
                            <td><%=lucros.get(i).getReceita().getPagamentoConvenio()%></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="financasGerenciamento" class="col s12 container">
            <div class="row">
                <%                    Calendar hoje = Calendar.getInstance();
                    List<LucroBean> lucros2 = new LucroDAO().obterTodos();
                    for (int i = 0; i < lucros2.size(); i++) {
                        if (lucros2.get(i).getDataLucro().toString().substring(0, 3).equals(hoje.get(Calendar.YEAR))) {
                            if (lucros2.get(i).getDataLucro().toString().substring(5, 6).equals(hoje.get(Calendar.MONTH))) {
                                break;
                            }
                        }
                    }
                %>
                <form action="/administrador/financeiro/store" method="GET" class="col s12">
                    <div class="row">
                        <div class="input-field col s12">
                            <input required id="financas-data" type="text"  class="validate datepicker" name="data">
                            <label for="financas-data">Data de envio</label>
                            <span class="helper-text" data-error="Insira sua data de envio" data-success="Correto"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input required id="financas-manutencao" type="password"  class="validate" name="manutencao">
                            <label for="financas-manutencao">Custos da manuten��o deste m�s</label>
                            <span class="helper-text" data-error="Insira os custos da manuten��o deste m�s" data-success="Correto"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input required id="financas-pagamento-a-vista" type="password"  class="validate" name="pagamento-a-vista">
                            <label for="financas-pagamento-a-vista">Receita deste m�s</label>
                            <span class="helper-text" data-error="Insira as receitas deste m�s" data-success="Correto"></span>
                        </div>
                    </div>
                    <input type="submit" class="btn col s4 validate" value="Registrar este m�s">
                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="../../model/footer.jsp" %> 