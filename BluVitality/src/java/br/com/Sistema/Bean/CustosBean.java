package br.com.Sistema.Bean;

/**
 * @author Cidmar
 */
public class CustosBean {
    private double funcionarios;
    private double fornecedores;
    private double agua;
    private double energia;
    private double tributos;
    private double manutencao;
    private double telefonia_e_internet;
    private double pacientes;
    private double despesas_gerais;
    private double materiais_e_medicamentos;
    private double alugueis;

    public double getPacientes() {
        return pacientes;
    }

    public void setPacientes(double pacientes) {
        this.pacientes = pacientes;
    }

    public double getFuncionarios() {
        return funcionarios;
    }

    public void setFuncionarios(double funcionarios) {
        this.funcionarios = funcionarios;
    }

    public double getFornecedores() {
        return fornecedores;
    }

    public void setFornecedores(double fornecedores) {
        this.fornecedores = fornecedores;
    }

    public double getAgua() {
        return agua;
    }

    public void setAgua(double agua) {
        this.agua = agua;
    }

    public double getEnergia() {
        return energia;
    }

    public void setEnergia(double energia) {
        this.energia = energia;
    }

    public double getAlugueis() {
        return alugueis;
    }

    public void setAlugueis(double alugueis) {
        this.alugueis = alugueis;
    }

    public double getTributos() {
        return tributos;
    }

    public void setTributos(double tributos) {
        this.tributos = tributos;
    }

    public double getManutencao() {
        return manutencao;
    }

    public void setManutencao(double manutencao) {
        this.manutencao = manutencao;
    }

    public double getTelefonia_e_internet() {
        return telefonia_e_internet;
    }

    public void setTelefonia_e_internet(double telefonia_e_internet) {
        this.telefonia_e_internet = telefonia_e_internet;
    }

    public double getMateriais_e_medicamentos() {
        return materiais_e_medicamentos;
    }

    public void setMateriais_e_medicamentos(double materiais_e_medicamentos) {
        this.materiais_e_medicamentos = materiais_e_medicamentos;
    }

    public double getDespesas_gerais() {
        return despesas_gerais;
    }

    public void setDespesas_gerais(double despesas_gerais) {
        this.despesas_gerais = despesas_gerais;
    }
}
