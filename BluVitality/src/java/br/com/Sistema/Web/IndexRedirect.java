package br.com.Sistema.Web;

import br.com.Sistema.Web.Usuario.*;
import br.com.Sistema.Bean.FuncionariosBean;
import br.com.Sistema.Bean.UsuariosBean;
import br.com.Sistema.DAO.FuncionariosDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Rafael Alipio Harada (rafhaharada@gmail.com)
 */
public class IndexRedirect extends HttpServlet {

    public static void redirecionar(HttpServletRequest req, HttpServletResponse resp, String tipoUsuario) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        if ((UsuariosBean) req.getSession().getAttribute("usuario") != null) {
            UsuariosBean usuario = ((UsuariosBean) req.getSession().getAttribute("usuario"));
            String tipoFuncionario = "";
            FuncionariosBean funcionario = new FuncionariosDAO().obterPeloIdUsuario(usuario.getId());
            tipoFuncionario = funcionario.getTipo();
            String clientUrl = req.getRequestURL().toString();
            String url = "/usuario";
            if (tipoFuncionario.equals("")) {
                if (!clientUrl.contains(url)) {
                    resp.sendRedirect(url);
                }
                req.getRequestDispatcher("/usuario/index.jsp").include(req, resp);
            } else if (tipoFuncionario.equals(tipoUsuario)) {
                req.getRequestDispatcher("/" + tipoUsuario + "/index.jsp").include(req, resp);
            } else {
                if (!tipoFuncionario.isEmpty()) {
                    resp.sendRedirect("/" + tipoFuncionario);
                } else {
                    resp.sendRedirect("/usuario");
                }
            }
        } else {
            resp.sendRedirect("/usuario/login");
        }
    }

    public static void redirecionarSubpasta(HttpServletRequest req, HttpServletResponse resp, String tipoUsuario, String subPasta) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        if ((UsuariosBean) req.getSession().getAttribute("usuario") != null) {
            UsuariosBean usuario = ((UsuariosBean) req.getSession().getAttribute("usuario"));
            String tipoFuncionario = "";
            FuncionariosBean funcionario = new FuncionariosDAO().obterPeloIdUsuario(usuario.getId());
            tipoFuncionario = funcionario.getTipo();
            String clientUrl = req.getRequestURL().toString();
            String url = "/usuario";
            if (tipoFuncionario.equals("")) {
                if (!clientUrl.contains(url)) {
                    resp.sendRedirect(url);
                }
                req.getRequestDispatcher("/usuario/index.jsp").include(req, resp);
            } else if (tipoFuncionario.equals(tipoUsuario)) {
                req.getRequestDispatcher("/" + tipoUsuario + "/" + subPasta).include(req, resp);
            } else {
                if (!tipoFuncionario.isEmpty()) {
                    resp.sendRedirect("/" + tipoFuncionario);
                } else {
                    resp.sendRedirect("/usuario");
                }
            }
        } else {
            resp.sendRedirect("/usuario/login");
        }
    }
}