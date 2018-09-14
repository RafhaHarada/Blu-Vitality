
<%@page import="br.com.Sistema.DAO.UsuariosDAO"%>
<%@page import="br.com.Sistema.Bean.UsuariosBean"%>
<%
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("/usuario/login");
    } else {
        int id_usuario = ((UsuariosBean)session.getAttribute("usuario")).getId();
        usuario = new UsuariosDAO().obterPeloId(id_usuario);
%>
<div onload="M.toast({html: 'Login bem sucedido!'})" class="rounded gren"></div>
<%
    }
%>