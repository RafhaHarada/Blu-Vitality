package br.com.Sistema.DAO;

import br.com.Sistema.Bean.QuartoBean;
import br.com.Sistema.Database.Conexao;
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
public class QuartoDAO {
    public List<QuartoBean> obterTodos() {
        List<QuartoBean> quartos = new ArrayList<>();
        String sql = "SELECT id, id_usuario, id_funcionario, data_entrada, data_saida, status FROM quartos";
        
        try{
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while(resultSet.next()){
                QuartoBean quarto = new QuartoBean();
                quarto.setId(resultSet.getInt("id"));
                quarto.setId_usuario(resultSet.getString("id_usuario"));
                quarto.setId_funcionario(resultSet.getInt("id_funcionario"));
                quarto.setData_entrada(resultSet.getDate("data_entrada"));
                quarto.setData_saida(resultSet.getDate("data_saida"));
                quarto.setStatus(resultSet.getString("status"));
            }
            }catch(SQLException e){
                    e.printStackTrace();
            }finally{
            Conexao.fecharConexao();
        }return quartos;
    }
    
    public QuartoBean obterPeloId(int id){
        QuartoBean quarto = null;
        String sql = "SELECT id, id_usuario, id_funcionario, data_entrada, data_saida, status FROM quartos WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();
            while(resultSet.next()){
                quarto = new QuartoBean();
                quarto.setId(resultSet.getInt("id"));
                quarto.setId_usuario(resultSet.getString("id_usuario"));
                quarto.setId_funcionario(resultSet.getInt("id_funcionario"));
                quarto.setData_entrada(resultSet.getDate("data_entrada"));
                quarto.setData_saida(resultSet.getDate("data_saida"));
                quarto.setStatus(resultSet.getString("status"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return quarto;
    }
    
    public int adicionar(QuartoBean quarto) {
        String sql = "INSERT INTO quartos (id, id_usuario, id_funcionario, data_entrada, data_saida, status) "
                + "VALUES(?,?,?,?,?,?)";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setString(1, quarto.getId_usuario());
            ps.setInt(2, quarto.getId_funcionario());
            ps.setDate(3, quarto.getData_entrada());
            ps.setDate(4, quarto.getData_saida());
            ps.setDate(5, quarto.getStatus());
            
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
    public boolean alterar(QuartoBean quarto){
        try{
            String sql = "UPDATE quartos SET id_usuario = ?, id_funcionario = ?, data_entrada = ? WHERE id = ?";
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setString(1, quarto.getId_usuario());
            ps.setInt(2, quarto.getId_funcionario());
            ps.setInt(3, quarto.getData_entrada());
            ps.setDate(4, quarto.getData_saida());
            ps.setString(5, quarto.getStatus());
            ps.setInt(6, quarto.getId());
            
            return ps.executeUpdate() ==1;
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return false;
    }
    
    public boolean apagar(int id){
        String sql = "DELETE FROM quartos WHERE id = ?";
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
