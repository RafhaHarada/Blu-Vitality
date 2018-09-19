<%-- 
    Document   : validation
    Created on : 19/09/2018, 08:01:00
    Author     : Alunos
--%>
<%@page import="br.com.Sistema.DAO.FuncionariosDAO"%>
<%@page import="br.com.Sistema.Bean.FuncionariosBean"%>
<%@page import="br.com.Sistema.Bean.UsuariosBean"%>
<%
    if ((UsuariosBean) request.getSession().getAttribute("usuario") != null) {
        String otherPages = "";
        String url = "/usuario/" + otherPages;
        UsuariosBean usuario = ((UsuariosBean) request.getSession().getAttribute("usuario"));
        if (usuario.isColaborador()) {
            FuncionariosBean funcionario = new FuncionariosDAO().obterPeloIdUsuario(usuario.getId());
            String clientUrl = request.getRequestURL().toString();
            url = "/" + funcionario.getTipo() + "/" + otherPages;
            if (!url.contains("/" + funcionario.getTipo())) {
                response.sendRedirect("/" + funcionario.getTipo());
            }
        } else {
            response.sendRedirect(url);
        }
    } else {
        response.sendRedirect("/usuario/login");
    }
%>