package br.com.Sistema.Web.Usuario;

import br.com.Sistema.Bean.UsuariosBean;
import br.com.Sistema.DAO.UsuariosDAO;
import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Rafael Alipio Harada (rafhaharada@gmail.com)
 */
@WebServlet("/usuario/store")
public class usuarioStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsuariosBean usuario = new UsuariosBean();

        if (!req.getParameter("nome-completo").isEmpty()) {
            usuario.setNome(req.getParameter("nome-completo"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("sexo").isEmpty()) {
            usuario.setSexo(req.getParameter("sexo").charAt(0));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("cpf").isEmpty()) {
            usuario.setCpf(req.getParameter("cpf"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("rg").isEmpty()) {
            usuario.setRg(req.getParameter("rg"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("estado-civil").isEmpty()) {
            usuario.setEstado_civil(req.getParameter("estado-civil"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("telefone").isEmpty()) {
            usuario.setTelefone(req.getParameter("telefone"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("email").isEmpty()) {
            usuario.setEmail(req.getParameter("email"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("endereco").isEmpty()) {
            usuario.setEndereco(req.getParameter("endereco"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        usuario.setComplemento(req.getParameter("complemento"));

        if (!req.getParameter("uf").isEmpty()) {
            usuario.setUf(req.getParameter("uf"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("cidade").isEmpty()) {
            usuario.setCidade(req.getParameter("cidade"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("naturalidade").isEmpty()) {
            usuario.setNaturalidade(req.getParameter("naturalidade"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("data-nascimento").isEmpty()) {
            String dataBr[] = req.getParameter("data-nascimento").split("/");
            String dataEn = dataBr[2] + "-" + dataBr[1] + "-" + dataBr[0];
            usuario.setData_nascimento(java.sql.Date.valueOf(dataEn));
            int idade = Period.between(LocalDate.parse(dataEn), LocalDate.now()).getYears();
            usuario.setIdade((byte) idade);
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        if (!req.getParameter("tipo-sanguineo").isEmpty()) {
            usuario.setTipo_sanguineo(req.getParameter("tipo-sanguineo"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        usuario.setContato_emergencia(req.getParameter("contato-emergencia"));

        if (!req.getParameter("convenio").isEmpty()) {
            usuario.setConvenio(req.getParameter("convenio"));
        } else {
            resp.sendRedirect("/usuario/cadastro?erro_no_cadastro=1");
        }

        usuario.setId(new UsuariosDAO().adicionar(usuario));

        resp.setContentType("text/html;charset=UTF-8");
        resp.sendRedirect("/usuario?id=" + usuario.getId());
    }
}
