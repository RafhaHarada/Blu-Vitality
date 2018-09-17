/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Bean;

import java.sql.Date;

/**
 * @author 
 * @author Gustavo Rodrigues (gugaaroodrigues@gmail.com)
 */
public class ExpedicaoBean {
    private int id;
    private String tipo;
    private String nome;
    private Date data_expedicao;
    private double custo;
    private UsuariosBean usuario;
    private FuncionariosBean funcionario;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Date getData_expedicao() {
        return data_expedicao;
    }

    public void setData_expedicao(Date data_expedicao) {
        this.data_expedicao = data_expedicao;
    }

    public double getCusto() {
        return custo;
    }

    public void setCusto(double custo) {
        this.custo = custo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public UsuariosBean getUsuario() {
        return usuario;
    }

    public void setUsuario(UsuariosBean usuario) {
        this.usuario = usuario;
    }

    public FuncionariosBean getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(FuncionariosBean funcionario) {
        this.funcionario = funcionario;
    }
}
