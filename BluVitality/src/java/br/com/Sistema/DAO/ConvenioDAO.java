package br.com.Sistema.DAO;

import br.com.Sistema.Bean.ConvenioBean;
import br.com.Sistema.Database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import static java.sql.Statement.RETURN_GENERATED_KEYS;

/**
 * @author @Rafael Alipio Harada (rafhaharada@gmail.com)
 */
public class ConvenioDAO {

    public List<ConvenioBean> obterTodos() {
        List<ConvenioBean> convenios = new ArrayList<>();
        String sql = "SELECT * FROM convenio";

        try {
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                ConvenioBean convenio = new ConvenioBean();
                convenio.setId(resultSet.getInt("id"));
                convenio.setIdUsuario(resultSet.getInt("id_usuario"));
                convenio.setEmpresaNome(resultSet.getString("empresa_nome"));
                convenio.setCusto(resultSet.getDouble("custo"));
                convenio.setDataConvenio(resultSet.getDate("data_convenio"));
                convenio.setPago(resultSet.getBoolean("pago"));
                convenio.setUsuario(new UsuarioDAO().obterPeloId(convenio.getIdUsuario()));
                convenios.add(convenio);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return convenios;
    }

    public ConvenioBean obterPeloId(int id) {
        String sql = "SELECT * FROM convenio WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if(resultSet.next()) {
                ConvenioBean convenio = new ConvenioBean();
                convenio.setId(resultSet.getInt("id"));
                convenio.setIdUsuario(resultSet.getInt("id_usuario"));
                convenio.setEmpresaNome(resultSet.getString("empresa_nome"));
                convenio.setCusto(resultSet.getDouble("custo"));
                convenio.setDataConvenio(resultSet.getDate("data_convenio"));
                convenio.setPago(resultSet.getBoolean("pago"));
                convenio.setUsuario(new UsuarioDAO().obterPeloId(convenio.getIdUsuario()));
                return convenio;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return null;
    }
    
    public ConvenioBean obterPeloIdUsuario(int idUsuario) {
        String sql = "SELECT * FROM convenio WHERE id_usuario = ?";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, idUsuario);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if(resultSet.next()) {
                ConvenioBean convenio = new ConvenioBean();
                convenio.setId(resultSet.getInt("id"));
                convenio.setIdUsuario(resultSet.getInt("id_usuario"));
                convenio.setEmpresaNome(resultSet.getString("empresa_nome"));
                convenio.setCusto(resultSet.getDouble("custo"));
                convenio.setDataConvenio(resultSet.getDate("data_convenio"));
                convenio.setPago(resultSet.getBoolean("pago"));
                convenio.setUsuario(new UsuarioDAO().obterPeloId(convenio.getIdUsuario()));
                return convenio;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return null;
    }

    public int adicionar(ConvenioBean convenio) {
        String sql = "INSERT INTO convenio (id_usuario,empresa_nome,custo,data_convenio,pago)"
                + "VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            int quantidade = 1;
            ps.setInt(quantidade++, convenio.getIdUsuario());
            ps.setString(quantidade++, convenio.getEmpresaNome());
            ps.setDouble(quantidade++, convenio.getCusto());
            ps.setDate(quantidade++, convenio.getDataConvenio());
            ps.setBoolean(quantidade++, convenio.isPago());
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

    public boolean alterar(ConvenioBean convenio) {
        try {
            String sql = "UPDATE convenio SET id_usuario = ? ,empresa_nome = ? ,custo = ? ,data_convenio = ? ,pago = ? WHERE id = ?";
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            int quantidade = 1;
            ps.setInt(quantidade++, convenio.getIdUsuario());
            ps.setString(quantidade++, convenio.getEmpresaNome());
            ps.setDouble(quantidade++, convenio.getCusto());
            ps.setDate(quantidade++, convenio.getDataConvenio());
            ps.setBoolean(quantidade++, convenio.isPago());
            ps.setInt(quantidade++, convenio.getId());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public boolean apagar(int id) {
        String sql = "DELETE FROM convenio WHERE id = ?";
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
