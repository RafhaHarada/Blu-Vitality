/*
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     :@Gustavo Rodrigues (gugaaroodrigues@gmail.com)

 */
package br.com.Sistema.Web.Administrador.Quarto;

import br.com.Sistema.Bean.QuartoBean;
import br.com.Sistema.DAO.QuartoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quarto/store")
public class QuartoStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        QuartoBean quarto = new QuartoBean();
        quarto.setNumero_quarto(Integer.parseInt(req.getParameter("numeroQuarto")));
        quarto.setTipo(req.getParameter("tipo"));
        quarto.setStatus(req.getParameter("status"));
        quarto.setId(new QuartoDAO().adicionarQuarto(quarto));
        
            resp.sendRedirect("administrador/");
                    
     
    }

}
