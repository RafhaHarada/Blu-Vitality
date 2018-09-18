package br.com.Sistema.Web.Funcionario;

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
 * Document : Created on : 17/09/2018 Author : @Gustavo Rodrigues
 * (gugaaroodrigues@gmail.com)
 */
@WebServlet("/funcionario")
public class funcionarioIndex extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");

        if ((UsuariosBean) req.getSession().getAttribute("usuario") != null) {
            UsuariosBean usuario = ((UsuariosBean) req.getSession().getAttribute("usuario"));
            String tipoFuncionario = "";
            FuncionariosBean funcionario1 = new FuncionariosDAO().obterPeloIdUsuario(usuario.getId());
            tipoFuncionario = funcionario1.getTipo();
            if (tipoFuncionario.equals("funcionario")) {
                req.getRequestDispatcher("/funcionario/index.jsp").include(req, resp);
            } else if (!tipoFuncionario.isEmpty()) {
                resp.sendRedirect("/" + tipoFuncionario);
            } else {
                resp.sendRedirect("/usuario");
            }
        } else {
            resp.sendRedirect("/usuario/login");
        }
    }
}
