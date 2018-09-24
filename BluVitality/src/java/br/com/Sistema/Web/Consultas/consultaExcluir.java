
package br.com.Sistema.Web.Consultas;

import br.com.Sistema.DAO.ExpedicaoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
public class consultaExcluir {
    
    @WebServlet("/consulta/excluir")
public class ProdutoExcluir extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");

        int id = Integer.parseInt(req.getParameter("id"));
        new ExpedicaoDAO().apagar(id);

        resp.sendRedirect("/usuario");
    }
}
}
