<%
    if (session.getAttribute("id").toString().isEmpty()) {
        response.sendRedirect("/login");
    } else {
        int id_usuario = Integer.parseInt((String) session.getAttribute("id"));
        UsuariosBean usuario = new UsuariosDAO().obterPeloId(id_usuario);
        if (request.getParameter("erro").equals("login-invalido")) {
        %>
            <div onload="M.toast({html: 'Login bem sucedido!'})" class="rounded gren"></div>
        <%
        }
    }
%>