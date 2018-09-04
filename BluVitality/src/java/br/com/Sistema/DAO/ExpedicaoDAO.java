package br.com.Sistema.DAO;

import br.com.Sistema.bean.ExpedicaoBean;
import br.com.Sistema.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.sql.Statement.RETURN_GENERATED_KEYS;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Alunos
 */
public class ExpedicaoDAO {
    public List<ExpedicaoBean> obterTodos() {
        List<ExpedicaoBean> expedicoes = new ArrayList<>();
        String sql = "SELECT id, id_usuario, id_funcionario, tipo, data_expedicao, custo FROM expedicoes";
        
        try{
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while(resultSet.next()){
                ExpedicaoBean expedicao = new ExpedicaoBean();
                expedicao.setId(resultSet.getInt("id"));
                expedicao.setId_usuario(resultSet.getInt("id_usuario"));
                expedicao.setId_funcionario(resultSet.getInt("id_funcionario"));
                expedicao.setTipo(resultSet.getString("tipo"));
                expedicao.setData_expedicao(resultSet.getDate("data_expedicao"));
                expedicao.setCusto(resultSet.getDouble("custo"));
            }
            }catch(SQLException e){
                    e.printStackTrace();
            }finally{
            Conexao.fecharConexao();
        }return expedicoes;
    }
    
    public ExpedicaoBean obterPeloId(int id){
        ExpedicaoBean expedicao = null;
        String sql = "SELECT id, id_usuario, id_funcionario, tipo, data_expedicao, custo FROM expedicoes WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();
            while(resultSet.next()){
                expedicao = new ExpedicaoBean();
                expedicao.setId(resultSet.getInt("id"));
                expedicao.setId_usuario(resultSet.getInt("id_usuario"));
                expedicao.setId_funcionario(resultSet.getInt("id_funcionario"));
                expedicao.setTipo(resultSet.getString("tipo"));
                expedicao.setData_expedicao(resultSet.getDate("data_expedicao"));
                expedicao.setCusto(resultSet.getDouble("custo"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return expedicao;
    }
    
    public int adicionar(ExpedicaoBean expedicao) {
        String sql = "INSERT INTO expedicoes (id, id_usuario, id_funcionario, tipo, data_expedicao, custo) "
                + "VALUES(?,?,?,?, ?, ?)";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setInt(1, expedicao.getId_usuario());
            ps.setInt(2, expedicao.getId_funcionario());
            ps.setString(3, expedicao.getTipo());
            ps.setDate(3, expedicao.getData_expedicao());
            ps.setDouble(3, expedicao.getCusto());
            
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            if(resultSet.last()){
                return resultSet.getInt(1);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return -1;
    }
    public boolean alterar(ExpedicaoBean expedicao){
        try{
            String sql = "UPDATE expedicoes SET id_usuario = ?, id_funcionario = ?, tipo = ?, data_expedicao = ?, custo = ? WHERE id = ?";
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, expedicao.getId_usuario());
            ps.setInt(2, expedicao.getId_funcionario());
            ps.setString(3, expedicao.getTipo());
            ps.setDate(3, expedicao.getData_expedicao());
            ps.setDouble(3, expedicao.getCusto());
            ps.setInt(4, expedicao.getId());
            
            return ps.executeUpdate() ==1;
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return false;
    }
    
    public boolean apagar(int id){
        String sql = "DELETE FROM expedicoes WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() ==1;
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return false;
    }
}
