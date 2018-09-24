package br.com.Sistema.Bean;

/**
 * @author Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
 */
public class GastosFuncionariosBean {
    private int id;
    private double salario_mensal;
    private double ferias_anuais_remuneradas;
    private double um_terco_sobre_ferias;
    private double decimo_terceiro_salario;
    private double aviso_previo;
    private double fgts;
    private double multa_fgts;
    private double inss;
    private double vale_transporte;
    private double vale_refeicao;
    private double total;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getSalario_mensal() {
        return salario_mensal;
    }

    public void setSalario_mensal(double salario_mensal) {
        this.salario_mensal = salario_mensal;
    }

    public double getFerias_anuais_remuneradas() {
        return ferias_anuais_remuneradas;
    }

    public void setFerias_anuais_remuneradas(double ferias_anuais_remuneradas) {
        this.ferias_anuais_remuneradas = ferias_anuais_remuneradas;
    }

    public double getUm_terco_sobre_ferias() {
        return um_terco_sobre_ferias;
    }

    public void setUm_terco_sobre_ferias(double um_terco_sobre_ferias) {
        this.um_terco_sobre_ferias = um_terco_sobre_ferias;
    }

    public double getDecimo_terceiro_salario() {
        return decimo_terceiro_salario;
    }

    public void setDecimo_terceiro_salario(double decimo_terceiro_salario) {
        this.decimo_terceiro_salario = decimo_terceiro_salario;
    }

    public double getAviso_previo() {
        return aviso_previo;
    }

    public void setAviso_previo(double aviso_previo) {
        this.aviso_previo = aviso_previo;
    }

    public double getFgts() {
        return fgts;
    }

    public void setFgts(double fgts) {
        this.fgts = fgts;
    }

    public double getMulta_fgts() {
        return multa_fgts;
    }

    public void setMulta_fgts(double multa_fgts) {
        this.multa_fgts = multa_fgts;
    }

    public double getInss() {
        return inss;
    }

    public void setInss(double inss) {
        this.inss = inss;
    }

    public double getVale_transporte() {
        return vale_transporte;
    }

    public void setVale_transporte(double vale_transporte) {
        this.vale_transporte = vale_transporte;
    }

    public double getVale_refeicao() {
        return vale_refeicao;
    }

    public void setVale_refeicao(double vale_refeicao) {
        this.vale_refeicao = vale_refeicao;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
