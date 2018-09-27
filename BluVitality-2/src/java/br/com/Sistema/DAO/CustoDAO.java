package br.com.Sistema.DAO;

import br.com.Sistema.Bean.ContaBean;
import br.com.Sistema.Bean.CustoBean;
import br.com.Sistema.Bean.GastoFuncionarioBean;
import br.com.Sistema.Bean.GastoGeralBean;
import br.com.Sistema.Bean.InvestimentoBean;
import br.com.Sistema.Database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.sql.Statement.RETURN_GENERATED_KEYS;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
 */
public class CustoDAO {
    public List<CustoBean> obterTodos() {
        List<CustoBean> custos = new ArrayList<>();
        String sql = "SELECT * FROM custos co JOIN gastosFuncionarios gf ON gf.id = co.id_gastoFuncionario JOIN contas ct ON ct.id = co.id_conta JOIN gastosGerais gg ON gg.id = co.id_gastoGeral JOIN investimentos inv ON iv.id = co.id_investimento ";
        try {
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();

            while (resultSet.next()) {
                CustoBean custo = new CustoBean();
                custo.setId(resultSet.getInt("co.id"));
                custo.setId_gastoFuncionario(resultSet.getInt("co.id_gastoFuncionario"));
                custo.setId_conta(resultSet.getInt("co.id_conta"));
                custo.setId_gastoGeral(resultSet.getInt("co.id_gastoGeral"));
                custo.setId_investimento(resultSet.getInt("co.id_investimento"));
                custo.setTipo(resultSet.getString("co.tipo"));
                custo.setTotal(resultSet.getDouble("total"));
                
                GastoFuncionarioBean gasto_Funcionario = new GastoFuncionarioDAO().obterPeloId(resultSet.getInt("gf.id"));
                custo.setGastoFuncionario(gasto_Funcionario);
                
                 ContaBean conta = new ContaDAO().obterPeloId(resultSet.getInt("ct.id"));
                custo.setConta(conta);
                
                GastoGeralBean gasto_Geral = new GastoGeralDAO().obterPeloId(resultSet.getInt("gg.id"));
                custo.setGastoGeral(gasto_Geral);
                
                InvestimentoBean investimento = new InvestimentoDAO().obterPeloId(resultSet.getInt("iv.id"));
                custo.setInvestimento(investimento);
                
                custos.add(custo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return custos;
    }

    public CustoBean obterPeloId(int id) {
        CustoBean custo = null;
        String sql = "SELECT SELECT * FROM custos co JOIN gastosFuncionarios gf ON gf.id = co.id_gastoFuncionario JOIN contas ct ON ct.id = co.id_conta JOIN gastosGerais gg ON gg.id = co.id_gastoGeral JOIN investimentos inv ON iv.id = co.id_investimento FROM custos WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();

            while (resultSet.next()) {
                custo = new CustoBean();
                custo.setId(resultSet.getInt("co.id"));
                custo.setId_gastoFuncionario(resultSet.getInt("co.id_gastoFuncionario"));
                custo.setId_conta(resultSet.getInt("co.id_conta"));
                custo.setId_gastoGeral(resultSet.getInt("co.id_gastoGeral"));
                custo.setId_investimento(resultSet.getInt("co.id_investimento"));
                custo.setTipo(resultSet.getString("co.tipo"));
                custo.setTotal(resultSet.getDouble("total"));
                
                GastoFuncionarioBean gasto_Funcionario = new GastoFuncionarioDAO().obterPeloId(resultSet.getInt("gf.id"));
                custo.setGastoFuncionario(gasto_Funcionario);
                
                 ContaBean conta = new ContaDAO().obterPeloId(resultSet.getInt("ct.id"));
                custo.setConta(conta);
                
                GastoGeralBean gasto_Geral = new GastoGeralDAO().obterPeloId(resultSet.getInt("gg.id"));
                custo.setGastoGeral(gasto_Geral);
                
                InvestimentoBean investimento = new InvestimentoDAO().obterPeloId(resultSet.getInt("iv.id"));
                custo.setInvestimento(investimento);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return custo;
    }

    public int adicionar(CustoBean custo) {
        String sql = "INSERT INTO custo(id_gastoFuncionario, id_conta, id_gastoGeral, id_investimento, total) VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setDouble(1, custo.getId_gastoFuncionario());
            ps.setDouble(2, custo.getId_conta());
            ps.setDouble(3, custo.getId_gastoGeral());
            ps.setDouble(4, custo.getId_investimento());
            ps.setDouble(5, custo.getTotal());
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

    public boolean alterar(CustoBean custo) {
        try {
            String sql = "UPDATE custo SET id_gastoFuncionario = ?, id_conta = ?, id_gastoGeral = ?, id_investimento = ?, total = ? WHERE id = ?";
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setDouble(1, custo.getId_gastoFuncionario());
            ps.setDouble(2, custo.getId_conta());
            ps.setDouble(3, custo.getId_gastoGeral());
            ps.setDouble(4, custo.getId_investimento());
            ps.setDouble(5, custo.getTotal());
            ps.setInt(6, custo.getId());

            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public boolean excluir(int id) {
        String sql = "DELETE FROM custos WHERE id = ?";
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
