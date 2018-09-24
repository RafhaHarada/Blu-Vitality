package br.com.Sistema.Web.Consultas;

import br.com.Sistema.Bean.ExpedicaoBean;
import br.com.Sistema.DAO.ExpedicaoDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet("/consulta/editar")
public class consultasEditar extends HttpServlet{

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            resp.setContentType("text/html; charset=UTF-8");

            ExpedicaoBean produto = new ExpedicaoDAO().obterPeloId(Integer.parseInt(req.getParameter("id")));
            req.setAttribute("produto", produto);

            req.getRequestDispatcher("/consulta/editar.jsp").include(req, resp);
        }
    }

