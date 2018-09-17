package org.apache.jsp.model;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.Sistema.DAO.UsuariosDAO;
import br.com.Sistema.Bean.UsuariosBean;
import br.com.Sistema.DAO.CargosDAO;
import br.com.Sistema.Bean.CargosBean;
import br.com.Sistema.Bean.FuncionariosBean;
import java.util.ArrayList;
import br.com.Sistema.DAO.FuncionariosDAO;
import java.util.List;

public final class headerStart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Blu Vitality</title>\r\n");
      out.write("        <meta charset='UTF-8'>\r\n");
      out.write("        <meta name='viewport' content='width=device-width, initial-scale=1.0'>\r\n");
      out.write("        <meta name=\"google-signin-scope\" content=\"profile email\">\r\n");
      out.write("        <meta name=\"google-signin-client_id\" content=\"377062664693-qt543mqqgviu416aaqij0sbk642k5tnn.apps.googleusercontent.com\">\r\n");
      out.write("\r\n");
      out.write("        <!--Import Google Icon Font-->\r\n");
      out.write("        <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>\r\n");
      out.write("\r\n");
      out.write("        <link rel='stylesheet' type='text/css' href='../resources/css/materialize.min.css'>\r\n");
      out.write("        <link rel='stylesheet' type='text/css' href='../resources/css/custom.css'>\r\n");
      out.write("        <link rel='stylesheet' type='text/css' href='../resources/css/loading.css'>\r\n");
      out.write("        <link rel='stylesheet' type='text/css' href='../libs/select2/select2.min.css'>\r\n");
      out.write("        <link rel='stylesheet' type='text/css' href='../libs/datatable/jquery.dataTables.min.css'>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!--div  class = \" preloader-wrapper \" >\r\n");
      out.write("        <div  class = \" preloader \" >\r\n");
      out.write("            <i class=\"material-icons ld ld-cycle\" >loop</i>\r\n");
      out.write("        </div >\r\n");
      out.write("        </div -->\r\n");
      out.write("        <!--Cabeçalho-->\r\n");
      out.write("        <header>\r\n");
      out.write("            <nav class='nav-extended white lighten-2 z-depth-0'>\r\n");
      out.write("                <div class='nav-wrapper'>\r\n");
      out.write("                    <a href='#Inicio' class='brand-logo'><img src=\"../resources/images/logo.gif\" class=\"imagem-logo\"></a>\r\n");
      out.write("                    <a href='#' data-target='mobile' class='sidenav-trigger teal-text'><i class='material-icons'>menu</i></a>\r\n");
      out.write("                    <ul id='nav-mobile' class='right'>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
