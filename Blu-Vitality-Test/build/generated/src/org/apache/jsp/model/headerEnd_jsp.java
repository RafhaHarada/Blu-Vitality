package org.apache.jsp.model;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class headerEnd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("</ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("\r\n");
      out.write("            <!--mobile e tablet side nav-->\r\n");
      out.write("            <ul class='sidenav' id='mobile'>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\" class=\"sidenav-close waves-effect waves-teal teal\"><i class=\"material-icons white-text\">arrow_back</i></a>\r\n");
      out.write("                </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a class=\"collapsible-header waves-effect waves-teal\">Serviços<i class=\"material-icons\">arrow_drop_down</i></a>\r\n");
      out.write("                            <div class=\"collapsible-body\">\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"#Servicos\">Serviços</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <div class=\"divider\"></div>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a class=\"collapsible-header waves-effect waves-teal\">Exames<i class=\"material-icons\">arrow_drop_down</i></a>\r\n");
      out.write("                            <div class=\"collapsible-body\">\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"#Exames\">Exames</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <div class=\"divider\"></div>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a class=\"collapsible-header waves-effect waves-teal\">Contatos<i class=\"material-icons\">arrow_drop_down</i></a>\r\n");
      out.write("                            <div class=\"collapsible-body\">\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"#Contatos\">Contatos</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <div class=\"divider\"></div>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a class=\"collapsible-header waves-effect waves-teal\">Sobre<i class=\"material-icons\">arrow_drop_down</i></a>\r\n");
      out.write("                            <div class=\"collapsible-body\">\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"#Sobre\">Sobre</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </header>\r\n");
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
