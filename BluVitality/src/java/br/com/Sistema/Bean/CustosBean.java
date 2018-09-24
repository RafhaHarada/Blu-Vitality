package br.com.Sistema.Bean;

/**
 * @author Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
 */
public class CustosBean {
   private int id;
   private int id_gastoFuncionario;
   private int id_conta;
   private int id_gastoGeral;
   private int id_investimento;
   private String tipo;
   private GastosFuncionariosBean gastoFuncionario;
   private ContasBean conta;
   private GastosGeraisBean gastoGeral;
   private InvestimentosBean investimento;
   private double total;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_gastoFuncionario() {
        return id_gastoFuncionario;
    }

    public void setId_gastoFuncionario(int id_gastoFuncionario) {
        this.id_gastoFuncionario = id_gastoFuncionario;
    }

    public int getId_conta() {
        return id_conta;
    }

    public void setId_conta(int id_conta) {
        this.id_conta = id_conta;
    }

    public int getId_gastoGeral() {
        return id_gastoGeral;
    }

    public void setId_gastoGeral(int id_gastoGeral) {
        this.id_gastoGeral = id_gastoGeral;
    }

    public int getId_investimento() {
        return id_investimento;
    }

    public void setId_investimento(int id_investimento) {
        this.id_investimento = id_investimento;
    }

    public GastosFuncionariosBean getGastoFuncionario() {
        return gastoFuncionario;
    }

    public void setGastoFuncionario(GastosFuncionariosBean gastoFuncionario) {
        this.gastoFuncionario = gastoFuncionario;
    }

    public ContasBean getConta() {
        return conta;
    }

    public void setConta(ContasBean conta) {
        this.conta = conta;
    }

    public GastosGeraisBean getGastoGeral() {
        return gastoGeral;
    }

    public void setGastoGeral(GastosGeraisBean gastoGeral) {
        this.gastoGeral = gastoGeral;
    }

    public InvestimentosBean getInvestimento() {
        return investimento;
    }

    public void setInvestimento(InvestimentosBean investimento) {
        this.investimento = investimento;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
