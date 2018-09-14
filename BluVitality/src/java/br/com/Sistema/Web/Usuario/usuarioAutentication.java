package br.com.Sistema.Web.Usuario;

import br.com.Sistema.Bean.FuncionariosBean;
import br.com.Sistema.Bean.UsuariosBean;
import br.com.Sistema.DAO.CargosDAO;
import br.com.Sistema.DAO.FuncionariosDAO;
import br.com.Sistema.DAO.UsuariosDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Rafael Alipio Harada (rafhaharada@gmail.com)
 */
@WebServlet("/usuario/autentication")
public class usuarioAutentication extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");

        String login = req.getParameter("login");
        String senha = req.getParameter("senha");

        UsuariosBean usuario = new UsuariosDAO().autenticar(login, senha);

        if (usuario != null) {
            req.getSession().setAttribute("id", usuario.getId());
            String tipoFuncionario = "";
            List<FuncionariosBean> funcionarios = new FuncionariosDAO().obterTodos();
            for (int i = 0; i < funcionarios.size(); i++) {
                if (usuario.getId() == funcionarios.get(i).getId_usuario()) {
                    tipoFuncionario = funcionarios.get(i).getTipo();
                    break;
                }
            }
            if(!tipoFuncionario.isEmpty()){
                req.getRequestDispatcher("/"+tipoFuncionario);
            } else {
                req.getRequestDispatcher("/usuarios");
            }
        } else {
            resp.sendRedirect("/login?erro=login-invalido");
        }

    }
}
