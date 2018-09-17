package org.apache.jsp.administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/administrador/../model/headerEnd.jsp");
    _jspx_dependants.add("/administrador/table-funcionarios.jsp");
    _jspx_dependants.add("/administrador/quarto/table-quartos.jsp");
    _jspx_dependants.add("/administrador/modal-remover-quarto.jsp");
    _jspx_dependants.add("/administrador/../model/footer.jsp");
  }

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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../model/headerStart.jsp", out, false);
      out.write("\r\n");
      out.write("<li><a class='dropdown-trigger' href='#' data-target='dropdownCadastro'>Opções</a>\r\n");
      out.write("    <!-- Dropdown Structure -->\r\n");
      out.write("    <ul id='dropdownCadastro' class='dropdown-content'>\r\n");
      out.write("        <li><a href=\"../\" onclick=\"signOut();\">Sair</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("</li>\r\n");
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
      out.write("\r\n");
      out.write("<!--%@include file=\"../model/sessionConfirm.jsp\" %-->\r\n");
      out.write("<div class=\" row\">\r\n");
      out.write("\r\n");
      out.write("    <h5>Seja Bem vindo</h5>\r\n");
      out.write("    <a class=\"waves-effect waves-light btn-small right\" id=\"btnFinancas\">button</a>\r\n");
      out.write("\r\n");
      out.write("    <span class=\"nome\">Gustavo</span>\r\n");
      out.write("    <div class=\"\" style=\"margin-top: auto\">\r\n");
      out.write("        <div class=\"divider\"></div>\r\n");
      out.write("        <ul class=\"tabs tabs-transparent\">\r\n");
      out.write("            <li class=\"tab\"><a href=\"#InicioADM\" class=\"active teal-text waves-effect\">Bem vindo</a></li>\r\n");
      out.write("            <li class=\"tab\"><a href=\"#listapaciente\" class=\"teal-text waves-effect\">Pacientes</a></li>\r\n");
      out.write("            <li class=\"tab\"><a href=\"#lisfuncionarios\" class=\"teal-text waves-effect\">Funcionarios</a></li>\r\n");
      out.write("            <li class=\"tab\"><a href=\"#hospitalQuartos\" class=\"teal-text waves-effect\">Quarto</a></li>\r\n");
      out.write("            <li class=\"tab\"><a href=\"#hospitalConfig\" class=\"teal-text waves-effect\">Configuração</a></li>\r\n");
      out.write("            <li class=\"tab\"><a href=\"#hospitalEquipamentos\" class=\"teal-text waves-effect\">Equipamentos</a></li>\r\n");
      out.write("            <li class=\"tab\"><a href=\"#hospitalEventos\" class=\"teal-text waves-effect\">Eventos</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <div class=\"divider\"></div>\r\n");
      out.write("        <div id=\"InicioADM\" class=\"col s12 container\">\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div id=\"listapaciente\" class=\"col s12 scrollBarOnDiv container\">\r\n");
      out.write("            <div class=\"col s12\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"lisfuncionarios\" class=\"col s12 container\">\r\n");
      out.write("            <div class=\"\">\r\n");
      out.write("                ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table class=\"responsive-table center\">\r\n");
      out.write("    <thead>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <th>Funcionario</th>\r\n");
      out.write("            <th>Função</th>\r\n");
      out.write("            <th>Ação</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </thead>\r\n");
      out.write("    <tbody>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <th scope=\"\"></th>\r\n");
      out.write("            <th scope=\"\"></th>\r\n");
      out.write("            <th scope=\"\"></th>\r\n");
      out.write("            <th scope=\"col\"><i class=\"\"></i></th>\r\n");
      out.write("\r\n");
      out.write("        </tr>\r\n");
      out.write("    </tbody>\r\n");
      out.write("    <tfoot>\r\n");
      out.write("        <tr>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </tfoot>\r\n");
      out.write("</table>  ");
      out.write(" \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"hospitalQuartos\" class=\"col s12 container\">\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("<table class=\"\" id=\"quarto-index\">\r\n");
      out.write("    <thead >\r\n");
      out.write("        <tr>\r\n");
      out.write("            <th scope=\"col\">Id</th>\r\n");
      out.write("            <th scope=\"col\">Numero</th>\r\n");
      out.write("            <th scope=\"col\">Tipo</th>\r\n");
      out.write("            <th scope=\"col\">data</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </thead>\r\n");
      out.write("    <tbody>\r\n");
      out.write("    </tbody>\r\n");
      out.write("</table>     \r\n");
      out.write("\r\n");
      out.write("            <a class=\"waves-effect waves-light btn-small right left\" id=\"btnRemove\">Nova Ala</a>\r\n");
      out.write("            <a href=\"#\" class=\"waves-effect waves-light btn-small right right-align\" id=\"btnAdd\">Adicionar</a>\r\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Modal Trigger -->\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"hospitalConfig\" class=\"col s12 container\">\r\n");
      out.write("            <div class=\"\">\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"hospitalEquipamentos\" class=\"col s12 container\">\r\n");
      out.write("            <div class=\"\">\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"hospitalEventos\" class=\"col s12 container\">\r\n");
      out.write("            <div class=\"\">\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!--<div id=\"loading\" style=\"display: block\">\r\n");
      out.write("    <i class=\"material-icons right ld ld-cycle\" id=\"loading\">loop</i>\r\n");
      out.write("</div>-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--Roda pé-->\r\n");
      out.write("<!--div class=\"slider\">\r\n");
      out.write("    <ul class=\"slides\">\r\n");
      out.write("        <li>\r\n");
      out.write("            <img src=\"../resources/images/slider1.jpg\" alt=''>\r\n");
      out.write("            <div class=\"caption left-align black-text\">\r\n");
      out.write("                <h3>Blu Vitality</h3>\r\n");
      out.write("                <h5>Vital para você, vital para nós.</h5>\r\n");
      out.write("            </div>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li>\r\n");
      out.write("            <img src=\"../resources/images/slider2.png\" alt=''>\r\n");
      out.write("            <div class=\"caption left-align black-text\">\r\n");
      out.write("                <h3>Alta Tecnologia e Gestão</h3>\r\n");
      out.write("                <h5>Tenha mais mobilidade e eficiência.</h5>\r\n");
      out.write("            </div>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li>\r\n");
      out.write("            <img src=\"../resources/images/slider3.jpg\" alt=''>\r\n");
      out.write("            <div class=\"caption left-align black-text\">\r\n");
      out.write("                <h3>Visite Nosso Hospital</h3>\r\n");
      out.write("                <h5>Estruturado,organizado e preparado!</h5>\r\n");
      out.write("            </div>\r\n");
      out.write("        </li>\r\n");
      out.write("    </ul>\r\n");
      out.write("</div-->\r\n");
      out.write("<footer class=\"page-footer teal accent-4\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col l6 s12\">\r\n");
      out.write("                <h4 class=\"white-text\">Contatos Rápidos</h4>\r\n");
      out.write("                <h5 class=\"white-text\">Fale Conosco</h5>\r\n");
      out.write("                <p class=\"grey-text text-lighten-4\">Telefone: +55 (47) 4002-8922</p>\r\n");
      out.write("                <p class=\"grey-text text-lighten-4\">E-mail: bluvitality@gmail.com</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col l4 offset-l2 s12\">\r\n");
      out.write("                <h5 class=\"white-text\">Links</h5>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a class=\"grey-text text-lighten-3\" href=\"#!\">Termos de Uso</a></li>\r\n");
      out.write("                    <li><a class=\"grey-text text-lighten-3\" href=\"#!\">Politica de Privacidade</a></li>\r\n");
      out.write("                    <li><a class=\"grey-text text-lighten-3\" href=\"#!\">Desenvolvedores do Site</a></li>\r\n");
      out.write("                    <li><a class=\"grey-text text-lighten-3\" href=\"#!\">Ajuda</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"footer-copyright\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            © BluVitality 2018 All Rights Reserved\r\n");
      out.write("            <a class=\"grey-text text-lighten-4 right\" href=\"#!\">More Links</a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("<!--   JavaScript Setup  -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"../resources/js/jquery-2.1.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../resources/js/materialize.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../resources/js/google-platform.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../resources/js/custom.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../resources/js/quarto-cadastro.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../resources/js/select2.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../resources/js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../funcionario/jsfuncionarios/jsfuncionarios.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write(' ');
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
