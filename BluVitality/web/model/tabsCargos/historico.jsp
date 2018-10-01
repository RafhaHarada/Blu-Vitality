<%-- 
    Document   : historico
    Created on : 30/09/2018, 13:20:44
    Author     : Gus
--%>

<div id="Comum4" class="col s12 container white">
    <table class="striped teal lighten-4">
        <thead>
            <tr>
                <th>Descrição</th>
                <th>Médico | Especialidade</th>
                <th>Data</th>
                <th>Horário</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <%
                    for (int i = 0; i < expedicoes.size(); i++) {
                        if (expedicoes.get(i).getData_expedicao().before(formatoEn.parse(formatoEn.format(hoje)))) {
                            String especialidade = expedicoes.get(i).getFuncionario().getCargo().getEspecialidade();
                            String medico = expedicoes.get(i).getFuncionario().getUsuario().getNome();
                            String medicoEspecialidade = medico + "|" + especialidade;
                            String data = formatoBr.format(expedicoes.get(i).getData_expedicao());
                %>
            <tr>
                <td><%=expedicoes.get(i).getTipo()%></td>
                <td><%=medicoEspecialidade%></td>
                <td><%=data%></td>
                <td><%=expedicoes.get(i).getHora_expedicao()%></td>
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>                                   
</div>