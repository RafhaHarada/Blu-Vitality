package br.com.Sistema.Bean;

import java.sql.Date;

/**
 * @author @Rafael Alipio Harada (rafhaharada@gmail.com)
 */
public class ConvenioBean {
    private int id;
    private int idUsuario;
    private UsuarioBean usuario;
    private String empresaNome;
    private double custo;
    private Date dataConvenio;
    private boolean pago;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getEmpresaNome() {
        return empresaNome;
    }

    public void setEmpresaNome(String empresaNome) {
        this.empresaNome = empresaNome;
    }

    public double getCusto() {
        return custo;
    }

    public void setCusto(double custo) {
        this.custo = custo;
    }

    public UsuarioBean getUsuario() {
        return usuario;
    }

    public void setUsuario(UsuarioBean usuario) {
        this.usuario = usuario;
    }

    public Date getDataConvenio() {
        return dataConvenio;
    }

    public void setDataConvenio(Date dataConvenio) {
        this.dataConvenio = dataConvenio;
    }

    public boolean isPago() {
        return pago;
    }

    public void setPago(boolean pago) {
        this.pago = pago;
    }
}
