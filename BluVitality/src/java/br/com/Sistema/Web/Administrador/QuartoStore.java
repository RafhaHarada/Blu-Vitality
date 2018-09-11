/*
    Document   : headeradm
    Created on : 26/08/2018, 17:47:02
    Author     :@Gustavo Rodrigues (gugaaroodrigues@gmail.com)

 */
package br.com.Sistema.Web.Administrador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HospitalStore", urlPatterns = {"/hospital/store"})
public class QuartoStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int numeroQuarto = Integer.parseInt(request.getParameter("numeroQuarto"));
        String tipo = request.getParameter("tipo");
        String status = request.getParameter("status");
    }

}
