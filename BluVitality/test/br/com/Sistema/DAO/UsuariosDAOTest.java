/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.DAO;

import br.com.Sistema.Bean.UsuariosBean;
import java.sql.Date;
import java.util.List;
import static oracle.jrockit.jfr.events.Bits.byteValue;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 * @author 
 * @author Gustavo Rodrigues (gugaaroodrigues@gmail.com)
 */
public class UsuariosDAOTest {
    
    public UsuariosDAOTest() {
    }

    @Test
    public void ObterTodos() {
        UsuariosBean usuario = new UsuariosBean();
        UsuariosDAO dao = new UsuariosDAO();
        usuario.setNome("Gustavo");
        usuario.setEstado_civil("solteiro");
        usuario.setIdade(byteValue(21));
        usuario.setSexo('M');
        usuario.setLogin("GustavoBeleza");
        usuario.setSenha("G#b147896");
        usuario.setCpf("123.789.456-09");
        usuario.setRg("984.321.75-2");
        usuario.setTelefone("47974185296");
        usuario.setEmail("gustavobeleza@outlook.com");
        usuario.setEndereco("Rua Alguma Coisa Que Não Sei, 277, Jardim Inexistente");
        usuario.setComplemento("qualquer coisa");
        usuario.setCidade("Blumenau");
        usuario.setUf("sc");
        usuario.setNaturalidade("GO");
        usuario.setData_nascimento(Date.valueOf("1996-02-19"));
        usuario.setNome_fic("Gus");
        usuario.setTipo_sanguineo("A+");
        usuario.setContato_emergencia("47997835153");
        usuario.setConvenio("000000358");
        
        List<UsuariosBean> referencia = new UsuariosDAO().obterTodos();
    }

    @Test
    public void Adicionar() {
        UsuariosBean usuarios = new UsuariosBean();
        UsuariosDAO dao = new UsuariosDAO();
        usuarios.setNome("Gustavo");
        usuarios.setEstado_civil("solteiro");
        usuarios.setIdade(byteValue(21));
        usuarios.setSexo('M');
        usuarios.setLogin("GustavoBeleza");
        usuarios.setSenha("G#b147896");
        usuarios.setCpf("123.789.456-09");
        usuarios.setRg("984.321.75-2");
        usuarios.setTelefone("47974185296");
        usuarios.setEmail("gustavobeleza@outlook.com");
        usuarios.setEndereco("Rua Alguma Coisa Que Não Sei, 277, Jardim Inexistente");
        usuarios.setComplemento("qualquer coisa");
        usuarios.setCidade("Blumenau");
        usuarios.setUf("sc");
        usuarios.setNaturalidade("GO");
        usuarios.setData_nascimento(Date.valueOf("1996-02-19"));
        usuarios.setNome_fic("Gus");
        usuarios.setTipo_sanguineo("A+");
        usuarios.setContato_emergencia("47997835153");
        usuarios.setConvenio("000000358");
        
        int referencia = new UsuariosDAO().adicionar(usuarios);
        usuarios.setId(referencia);
    }

    @Test
    public void Excluir() {
        UsuariosBean usuario = new UsuariosBean();
        UsuariosDAO dao = new UsuariosDAO();
        usuario.setNome("Gustavo");
        usuario.setEstado_civil("solteiro");
        usuario.setIdade(byteValue(21));
        usuario.setSexo('M');
        usuario.setLogin("GustavoBeleza");
        usuario.setSenha("G#b147896");
        usuario.setCpf("123.789.456-09");
        usuario.setRg("984.321.75-2");
        usuario.setTelefone("47974185296");
        usuario.setEmail("gustavobeleza@outlook.com");
        usuario.setEndereco("Rua Alguma Coisa Que Não Sei, 277, Jardim Inexistente");
        usuario.setComplemento("qualquer coisa");
        usuario.setCidade("Blumenau");
        usuario.setUf("sc");
        usuario.setNaturalidade("GO");
        usuario.setData_nascimento(Date.valueOf("1996-02-19"));
        usuario.setNome_fic("Gus");
        usuario.setTipo_sanguineo("A+");
        usuario.setContato_emergencia("47997835153");
        usuario.setConvenio("000000358");
        
        int referencia = new UsuariosDAO().adicionar(usuario);
        usuario.setId(referencia);
        new UsuariosDAO().excluir(referencia);
    }

    @Test
    public void Alterar() {
        UsuariosBean usuario = new UsuariosBean();
        UsuariosDAO dao = new UsuariosDAO();
        usuario.setNome("Gustavo");
        usuario.setEstado_civil("solteiro");
        usuario.setIdade(byteValue(21));
        usuario.setSexo('M');
        usuario.setLogin("GustavoBeleza");
        usuario.setSenha("G#b147896");
        usuario.setCpf("123.789.456-09");
        usuario.setRg("984.321.75-2");
        usuario.setTelefone("47974185296");
        usuario.setEmail("gustavobeleza@outlook.com");
        usuario.setEndereco("Rua Alguma Coisa Que Não Sei, 277, Jardim Inexistente");
        usuario.setComplemento("qualquer coisa");
        usuario.setCidade("Blumenau");
        usuario.setUf("sc");
        usuario.setNaturalidade("GO");
        usuario.setData_nascimento(Date.valueOf("1996-02-19"));
        usuario.setNome_fic("Gus");
        usuario.setTipo_sanguineo("A+");
        usuario.setContato_emergencia("47997835153");
        usuario.setConvenio("000000358");
        
        int referencia = new UsuariosDAO().adicionar(usuario);
        usuario.setId(referencia);

        new UsuariosDAO().alterar(usuario);
    }

    @Test
    public void ObterPeloId() {
        UsuariosBean usuario = new UsuariosBean();
        UsuariosDAO dao = new UsuariosDAO();
        usuario.setNome("Gustavo");
        usuario.setEstado_civil("solteiro");
        usuario.setIdade(byteValue(21));
        usuario.setSexo('M');
        usuario.setLogin("GustavoBeleza");
        usuario.setSenha("G#b147896");
        usuario.setCpf("123.789.456-09");
        usuario.setRg("984.321.75-2");
        usuario.setTelefone("47974185296");
        usuario.setEmail("gustavobeleza@outlook.com");
        usuario.setEndereco("Rua Alguma Coisa Que Não Sei, 277, Jardim Inexistente");
        usuario.setComplemento("qualquer coisa");
        usuario.setCidade("Blumenau");
        usuario.setUf("sc");
        usuario.setNaturalidade("GO");
        usuario.setData_nascimento(Date.valueOf("1996-02-19"));
        usuario.setNome_fic("Gus");
        usuario.setTipo_sanguineo("A+");
        usuario.setContato_emergencia("47997835153");
        usuario.setConvenio("000000358");
    }

    @Test
    public void Autenticar() {
        UsuariosBean usuario = new UsuariosBean();
        UsuariosDAO dao = new UsuariosDAO();
        usuario.setNome("Gustavo");
        usuario.setEstado_civil("solteiro");
        usuario.setIdade(byteValue(21));
        usuario.setSexo('M');
        usuario.setLogin("GustavoBeleza");
        usuario.setSenha("G#b147896");
        usuario.setCpf("123.789.456-09");
        usuario.setRg("984.321.75-2");
        usuario.setTelefone("47974185296");
        usuario.setEmail("gustavobeleza@outlook.com");
        usuario.setEndereco("Rua Alguma Coisa Que Não Sei, 277, Jardim Inexistente");
        usuario.setComplemento("qualquer coisa");
        usuario.setCidade("Blumenau");
        usuario.setUf("sc");
        usuario.setNaturalidade("GO");
        usuario.setData_nascimento(Date.valueOf("1996-02-19"));
        usuario.setNome_fic("Gus");
        usuario.setTipo_sanguineo("A+");
        usuario.setContato_emergencia("47997835153");
        usuario.setConvenio("000000358");
    }
    
}
