<%-- 
    Document   : ListarQuartos
    Created on : 10/09/2018, 23:51:13
    Author     : Gus
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     :@Gustavo Rodrigues (gugaaroodrigues@gmail.com)  
--%>


<%@page import="br.com.Sistema.DAO.QuartoDAO"%>
<%@page import="br.com.Sistema.Bean.QuartoBean"%>
<%@page import="java.util.List"%>
<div class="collapsible-body">
    <span class="chart-title white-text"><h5>Pacientes</h5></span>
    <div class="chart-revenue cyan darken-2 white-text">
        <% List<QuartoBean> quartos = new QuartoDAO().obterTodos();%>
        <table class="responsive-table striped">
            <thead>
                <tr>
                    <th>Quarto</th>
                    <th>Tipo</th>
                    <th>STATUS</th>
                </tr>
            </thead>
            <tbody>
                <% for (QuartoBean quarto : quartos) {%>
                <tr>
                    <td><%=quarto.getNumero_quarto()%></td>
                    <td><%=quarto.getTipo()%></td>
                    <td><%=quarto.getStatus()%></td>
                </tr>
                <% }%>
            </tbody>
        </table>    
    </div>
</div>