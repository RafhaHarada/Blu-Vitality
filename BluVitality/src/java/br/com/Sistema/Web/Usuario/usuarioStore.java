package br.com.Sistema.Web.Usuario;

import br.com.Sistema.Bean.UsuariosBean;
import br.com.Sistema.DAO.UsuariosDAO;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Rafael Alipio Harada (rafhaharada@gmail.com)
 */
@WebServlet("/usuarios/store")
public class usuarioStore extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsuariosBean usuario = new UsuariosBean();
        usuario.setNome(req.getParameter("cadastro-nome-completo"));
        usuario.setIdade(Integer.parseInt(req.getParameter("cadastro-idade")));
        usuario.setSexo(req.getParameter("cadastro-sexo").charAt(0));
        usuario.setCpf(req.getParameter("cadastro-cpf"));
        usuario.setRg(req.getParameter("cadastro-rg"));
        usuario.setTelefone(req.getParameter("cadastro-telefone"));
        usuario.setEmail(req.getParameter("cadastro-email"));
        usuario.setEndereco(req.getParameter("cadastro-endereco"));
        usuario.setUF(req.getParameter("cadastro-uf"));
        usuario.setCidade(req.getParameter("cadastro-nome-completo"));
        usuario.setNaturalidade(req.getParameter("cadastro-naturalidade"));
        String dataBr[] = req.getParameter("cadastro-data-nascimento").split("-");
        String dataEn = dataBr[3]+"-"+dataBr[2]+"-"+dataBr[1];
        usuario.setData_nascimento(Date.valueOf(dataEn));
        usuario.setTipo_sanguineo(req.getParameter("cadastro-tipo-sanguineo"));
        usuario.setContato_emergencia(req.getParameter("cadastro-contato-emergencia"));
        usuario.setConvenio(req.getParameter("cadastro-convenio"));
        
        usuario.setId(new UsuariosDAO.adicionar(usuario));
        
        resp.setContentType("text/html;charset=UTF-8");
    }
}
