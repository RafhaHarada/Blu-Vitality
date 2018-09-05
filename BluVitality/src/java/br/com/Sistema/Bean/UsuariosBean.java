package br.com.Sistema.Bean;

import java.sql.Date;

/**
 * @author Nattana Matos
 * @author Gustavo Rodrigues (gugaaroodrigues@gmail.com)
 */

public class UsuariosBean {
    
    private int id ;
    private String nome;
    private String estado_civil;
    private byte idade;
    private char  sexo;
    private String login;
    private String senha;
    private String cpf;
    private String rg;
    private String telefone;
    private String email;
    private String endereco;
    private String complemento;
    private String UF;
    private String cidade;
    private String naturalidade;
    private Date data_nascimento;
    private String nome_fic;
    private String tipo_sanguineo;
    private String contato_emergencia;
    private String convenio;
    

    
    public String getTipo_sanguineo() {
        return complemento;
    }

    public void setTipo_sanguineo(String complemento) {
        this.complemento = tipo_sanguineo;
    }
    public String getContato_emergencia() {
        return complemento;
    }

    public void setContato_emergencia(String complemento) {
        this.complemento = contato_emergencia;
    }
    public String getConvenio() {
        return complemento;
    }

    public void setConvenio(String complemento) {
        this.complemento = convenio;
    }
    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getUF() {
        return UF;
    }

    public void setUF(String UF) {
        this.UF = UF;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public Date getData_nascimento() {
        return data_nascimento;
    }

    public void setData_nascimento(Date data_nascimento) {
        this.data_nascimento = data_nascimento;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEstado_civil() {
        return estado_civil;
    }

    public void setEstado_civil(String estado_civil) {
        this.estado_civil = estado_civil;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = (byte) idade;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone =  telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getNaturalidade() {
        return naturalidade;
    }

    public void setNaturalidade(String naturalidade) {
        this.naturalidade = naturalidade;
    }

    public String getNome_fic() {
        return nome_fic;
    }

    public void setNome_fic(String nome_fic) {
        this.nome_fic = nome_fic;
    }
    
}
