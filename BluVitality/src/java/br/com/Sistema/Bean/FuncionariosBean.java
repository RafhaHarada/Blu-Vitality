package br.com.Sistema.Bean;

/**
 * @author Nattana Matos
 */
public class FuncionariosBean {

    private int id;
    private int id_usuario;
    private int id_cargo;
    private boolean ativo;
    private UsuariosBean usuario;
    private CargosBean cargo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_cargo() {
        return id_cargo;
    }

    public void setId_cargo(int id_cargo) {
        this.id_cargo = id_cargo;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

    public UsuariosBean getUsuario() {
        return usuario;
    }

    public void setUsuario(UsuariosBean usuario) {
        this.usuario = usuario;
    }

    public CargosBean getCargo() {
        return cargo;
    }

    public void setCargo(CargosBean cargo) {
        this.cargo = cargo;
    }
    
}
