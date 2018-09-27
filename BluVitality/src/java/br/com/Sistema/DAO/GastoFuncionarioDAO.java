package br.com.Sistema.DAO;

import br.com.Sistema.Bean.GastosFuncionarioBean;
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
public class GastoFuncionarioDAO {

    public List<GastosFuncionarioBean> obterTodos() {
        List<GastosFuncionarioBean> gastosFuncionarios = new ArrayList<>();
        String sql = "SELECT * FROM gastosFuncionarios";
        try {
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();

            while (resultSet.next()) {
                GastosFuncionarioBean gastoFuncionario = new GastosFuncionarioBean();
                gastoFuncionario.setId(resultSet.getInt("id"));
                gastoFuncionario.setSalarioMensal(resultSet.getDouble("salarioMensal"));
                gastoFuncionario.setFeriasAnuaisRemuneradas(resultSet.getDouble("feriasAnuaisRemuneradas"));
                gastoFuncionario.setUmTercoSobreFerias(resultSet.getDouble("umTercoSobreFerias"));
                gastoFuncionario.setDecimoTerceiroSalario(resultSet.getDouble("decimoTerceiroSalario"));
                gastoFuncionario.setAvisoPrevio(resultSet.getDouble("avisoPrevio"));
                gastoFuncionario.setFgts(resultSet.getDouble("fgts"));
                gastoFuncionario.setMultaFgts(resultSet.getDouble("multaFgts"));
                gastoFuncionario.setInss(resultSet.getDouble("inss"));
                gastoFuncionario.setValeTransporte(resultSet.getDouble("valeTransporte"));
                gastoFuncionario.setValeRefeicao(resultSet.getDouble("valeRefeicao"));
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

    public GastosFuncionarioBean obterPeloId(int id) {
        GastosFuncionarioBean gastoFuncionario = null;
        String sql = "SELECT salarioMensal, feriasAnuaisRemuneradas, umTercoSobreFerias, decimoTerceiroSalario, "
                + "avisoPrevio, fgts, multaFgts, inss, valeTransporte, valeRefeicao, total FROM gastosFuncionarios WHERE id = ?";
                
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();

            while (resultSet.next()) {
                gastoFuncionario = new GastosFuncionarioBean();
                gastoFuncionario.setId(resultSet.getInt("id"));
                gastoFuncionario.setSalarioMensal(resultSet.getDouble("salarioMensal"));
                gastoFuncionario.setFeriasAnuaisRemuneradas(resultSet.getDouble("feriasAnuaisRemuneradas"));
                gastoFuncionario.setUmTercoSobreFerias(resultSet.getDouble("umTercoSobreFerias"));
                gastoFuncionario.setDecimoTerceiroSalario(resultSet.getDouble("decimoTerceiroSalario"));
                gastoFuncionario.setAvisoPrevio(resultSet.getDouble("avisoPrevio"));
                gastoFuncionario.setFgts(resultSet.getDouble("fgts"));
                gastoFuncionario.setMultaFgts(resultSet.getDouble("multaFgts"));
                gastoFuncionario.setInss(resultSet.getDouble("inss"));
                gastoFuncionario.setValeTransporte(resultSet.getDouble("valeTransporte"));
                gastoFuncionario.setValeRefeicao(resultSet.getDouble("valeRefeicao"));
                gastoFuncionario.setTotal(resultSet.getDouble("total"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return gastoFuncionario;
    }

    public int adicionar(GastosFuncionarioBean gastoFuncionario) {
        String sql = "INSERT INTO gastoFuncioario(salarioMensal, feriasAnuaisRemuneradas, umTercoSobreFerias, decimoTerceiroSalario, "
                + "avisoPrevio, fgts, multaFgts, inss, valeTransporte, valeRefeicao, total) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
                
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setDouble(1, gastoFuncionario.getSalarioMensal());
            ps.setDouble(2, gastoFuncionario.getFeriasAnuaisRemuneradas());
            ps.setDouble(3, gastoFuncionario.getUmTercoSobreFerias());
            ps.setDouble(4, gastoFuncionario.getDecimoTerceiroSalario());
            ps.setDouble(5, gastoFuncionario.getAvisoPrevio());
            ps.setDouble(8, gastoFuncionario.getMultaFgts());
            ps.setDouble(9, gastoFuncionario.getFgts());
            ps.setDouble(10, gastoFuncionario.getInss());
            ps.setDouble(11, gastoFuncionario.getValeTransporte());
            ps.setDouble(12, gastoFuncionario.getValeRefeicao());
            ps.setDouble(13, gastoFuncionario.getTotal());
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

    public boolean alterar(GastosFuncionarioBean gastoFuncionario) {
        try {
            String sql = "UPDATE gastoFuncionario SET salarioMensal = ?, feriasAnuaisRemuneradas = ?, umTercoSobreFerias = ?, decimoTerceiroSalario = ?, "
                    + "avisoPrevio = ?, fgts, multaFgts = ?, inss = ?, valeTransporte = ?, valeRefeicao = ?, total = ? WHERE id = ?";
                    
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setDouble(1, gastoFuncionario.getSalarioMensal());
            ps.setDouble(2, gastoFuncionario.getFeriasAnuaisRemuneradas());
            ps.setDouble(3, gastoFuncionario.getUmTercoSobreFerias());
            ps.setDouble(4, gastoFuncionario.getDecimoTerceiroSalario());
            ps.setDouble(5, gastoFuncionario.getAvisoPrevio());
            ps.setDouble(8, gastoFuncionario.getMultaFgts());
            ps.setDouble(9, gastoFuncionario.getFgts());
            ps.setDouble(10, gastoFuncionario.getInss());
            ps.setDouble(11, gastoFuncionario.getValeTransporte());
            ps.setDouble(12, gastoFuncionario.getValeRefeicao());
            ps.setDouble(13, gastoFuncionario.getTotal());
            ps.setInt(14, gastoFuncionario.getId());

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
