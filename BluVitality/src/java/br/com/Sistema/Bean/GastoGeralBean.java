/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.Bean;

/**
 *
 * @author Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
 */
public class GastoGeralBean {
    private int id;
    private double manutencaoEquipamentos;
    private double limpeza;
    private double manutencaoEstrutura;
    private double alimentacao;
    private double materiaisDeConsumo;
    private double medicamentos;
    private double imprevistos;
    private double total;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getManutencaoEquipamentos() {
        return manutencaoEquipamentos;
    }

    public void setManutencaoEquipamentos(double manutencaoEquipamentos) {
        this.manutencaoEquipamentos = manutencaoEquipamentos;
    }

    public double getLimpeza() {
        return limpeza;
    }

    public void setLimpeza(double limpeza) {
        this.limpeza = limpeza;
    }

    public double getManutencaoEstrutura() {
        return manutencaoEstrutura;
    }

    public void setManutencaoEstrutura(double manutencaoEstrutura) {
        this.manutencaoEstrutura = manutencaoEstrutura;
    }

    public double getAlimentacao() {
        return alimentacao;
    }

    public void setAlimentacao(double alimentacao) {
        this.alimentacao = alimentacao;
    }

    public double getMateriaisDeConsumo() {
        return materiaisDeConsumo;
    }

    public void setMateriaisDeConsumo(double materiaisDeConsumo) {
        this.materiaisDeConsumo = materiaisDeConsumo;
    }

    public double getMedicamentos() {
        return medicamentos;
    }

    public void setMedicamentos(double medicamentos) {
        this.medicamentos = medicamentos;
    }

    public double getImprevistos() {
        return imprevistos;
    }

    public void setImprevistos(double imprevistos) {
        this.imprevistos = imprevistos;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

}
