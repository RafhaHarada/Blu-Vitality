package br.com.Sistema.DAO;

import br.com.Sistema.Bean.GastosFuncionariosBean;
import br.com.Sistema.Database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.sql.Statement.RETURN_GENERATED_KEYS;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Cidmar
 */
public class GastosFuncionariosDAO {

    public List<GastosFuncionariosBean> obterTodos() {
        List<GastosFuncionariosBean> gastosFuncionarios = new ArrayList<>();
        String sql = "SELECT * FROM gastosFuncionarios";
        try {
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();

            while (resultSet.next()) {
                GastosFuncionariosBean gastoFuncionario = new GastosFuncionariosBean();
                gastoFuncionario.setId(resultSet.getInt("id"));
                gastoFuncionario.setSalario_mensal(resultSet.getDouble("salario_mensal"));
                gastoFuncionario.setFerias_anuais_remuneradas(resultSet.getDouble("ferias_anuais_remuneradas"));
                gastoFuncionario.setUm_terco_sobre_ferias(resultSet.getDouble("um_terco_sobre_ferias"));
                gastoFuncionario.setDecimo_terceiro_salario(resultSet.getDouble("decimo_terceiro_salario"));
                gastoFuncionario.setAviso_previo(resultSet.getDouble("aviso_previo"));
                gastoFuncionario.setFgts(resultSet.getDouble("fgts"));
                gastoFuncionario.setMulta_fgts(resultSet.getDouble("multa_fgts"));
                gastoFuncionario.setInss(resultSet.getDouble("inss"));
                gastoFuncionario.setVale_transporte(resultSet.getDouble("vale_transporte"));
                gastoFuncionario.setVale_refeicao(resultSet.getDouble("vale_refeicao"));
                gastoFuncionario.setTotal(resultSet.getDouble("total"));
                gastosFuncionarios.add(gastoFuncionario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return gastosFuncionarios;
    }

    public GastosFuncionariosBean obterPeloId(int id) {
        GastosFuncionariosBean gastoFuncionario = null;
        String sql = "SELECT salario_mensal, ferias_anuais_remuneradas, um_terco_sobre_ferias, decimo_terceiro_salario, "
                + "aviso_previo, fgts, multa_fgts, inss, vale_transporte, vale_refeicao, total FROM gastosFuncionarios WHERE id = ?";
                
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();

            while (resultSet.next()) {
                gastoFuncionario = new GastosFuncionariosBean();
                gastoFuncionario.setId(resultSet.getInt("id"));
                gastoFuncionario.setSalario_mensal(resultSet.getDouble("salario_mensal"));
                gastoFuncionario.setFerias_anuais_remuneradas(resultSet.getDouble("ferias_anuais_remuneradas"));
                gastoFuncionario.setUm_terco_sobre_ferias(resultSet.getDouble("um_terco_sobre_ferias"));
                gastoFuncionario.setDecimo_terceiro_salario(resultSet.getDouble("decimo_terceiro_salario"));
                gastoFuncionario.setAviso_previo(resultSet.getDouble("aviso_previo"));
                gastoFuncionario.setMulta_fgts(resultSet.getDouble("multa_fgts"));
                gastoFuncionario.setFgts(resultSet.getDouble("fgts"));
                gastoFuncionario.setInss(resultSet.getDouble("inss"));
                gastoFuncionario.setVale_transporte(resultSet.getDouble("vale_transporte"));
                gastoFuncionario.setVale_refeicao(resultSet.getDouble("vale_refeicao"));
                gastoFuncionario.setTotal(resultSet.getDouble("total"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return gastoFuncionario;
    }

    public int adicionar(GastosFuncionariosBean gastoFuncionario) {
        String sql = "INSERT INTO gastoFuncioario(salario_mensal, ferias_anuais_remuneradas, um_terco_sobre_ferias, decimo_terceiro_salario, "
                + "aviso_previo, fgts, multa_fgts, inss, vale_transporte, vale_refeicao, total) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
                
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setDouble(1, gastoFuncionario.getSalario_mensal());
            ps.setDouble(2, gastoFuncionario.getFerias_anuais_remuneradas());
            ps.setDouble(3, gastoFuncionario.getUm_terco_sobre_ferias());
            ps.setDouble(4, gastoFuncionario.getDecimo_terceiro_salario());
            ps.setDouble(5, gastoFuncionario.getAviso_previo());
            ps.setDouble(8, gastoFuncionario.getMulta_fgts());
            ps.setDouble(12, gastoFuncionario.getFgts());
            ps.setDouble(14, gastoFuncionario.getInss());
            ps.setDouble(16, gastoFuncionario.getVale_transporte());
            ps.setDouble(17, gastoFuncionario.getVale_refeicao());
            ps.setDouble(18, gastoFuncionario.getTotal());
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return -1;
    }

    public boolean alterar(GastosFuncionariosBean gastoFuncionario) {
        try {
            String sql = "UPDATE gastoFuncionario SET salario_mensal = ?, ferias_anuais_remuneradas = ?, um_terco_sobre_ferias = ?, decimo_terceiro_salario = ?, "
                    + "aviso_previo = ?, fgts, multa_fgts = ?, inss = ?, vale_transporte = ?, vale_refeicao = ?, total = ? WHERE id = ?";
                    
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setDouble(1, gastoFuncionario.getSalario_mensal());
            ps.setDouble(2, gastoFuncionario.getFerias_anuais_remuneradas());
            ps.setDouble(3, gastoFuncionario.getUm_terco_sobre_ferias());
            ps.setDouble(4, gastoFuncionario.getDecimo_terceiro_salario());
            ps.setDouble(5, gastoFuncionario.getAviso_previo());
            ps.setDouble(8, gastoFuncionario.getMulta_fgts());
            ps.setDouble(12, gastoFuncionario.getFgts());
            ps.setDouble(14, gastoFuncionario.getInss());
            ps.setDouble(16, gastoFuncionario.getVale_transporte());
            ps.setDouble(17, gastoFuncionario.getVale_refeicao());
            ps.setDouble(18, gastoFuncionario.getTotal());
            ps.setInt(19, gastoFuncionario.getId());

            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public boolean excluir(int id) {
        String sql = "DELETE FROM gastosFuncionarios WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }
}
