package br.com.Sistema.DAO;

import br.com.Sistema.Bean.ServicoBean;
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
public class ServicosDAO {
    public List<ServicoBean> obterTodos(){
        List<ServicoBean> servicos = new ArrayList<>();
        String sql = "SELECT FROM servicos id_fucionario, nome, decricao, tempo_execucao";
        try{
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            
            while(resultSet.next()){
                ServicoBean servico = new ServicoBean();
                servico.setId(resultSet.getInt("id"));
                servico.setId_funcionario(resultSet.getInt("id_funcionario"));
                servico.setNome(resultSet.getString("nome"));
                servico.setDescricao(resultSet.getString("descricao"));
                servico.setTempo_execucao(resultSet.getDate("tempo_execucao"));
                servicos.add(servico);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return servicos;
    }
    
    public ServicoBean obterPeloId(int id){
        ServicoBean servico = null;
        String sql = "SELECT id, id_funcionario, nome, descricao, tempo_execucao FROM servicos WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();
            while(resultSet.next()){
                servico = new ServicoBean();
                servico.setId(resultSet.getInt("id"));
                servico.setId_funcionario(resultSet.getInt("id_funcionario"));
                servico.setNome(resultSet.getString("nome"));
                servico.setDescricao(resultSet.getString("descricao"));
                servico.setTempo_execucao(resultSet.getDate("tempo_execucao"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return servico;
    }
    
    public int adicionar(ServicoBean servico){
        String sql = "INSERT INTO ervicos(id, id_funcionario, nome, descricao, tempo_execucao)"
                   + "VALUES(?,?,?,?,?)";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setInt(1, servico.getId_funcionario());
            ps.setString(2, servico.getNome());
            ps.setString(3, servico.getDescricao());
            ps.setDate(4, servico.getTempo_execucao());
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
    
    public boolean alterar(ServicoBean servico){
        try{
            String sql = "UPDATE servicos SET id_funcionario, nome, descricao, tempo_execucao WHERE id = ?";
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, servico.getId_funcionario());
            ps.setString(2, servico.getNome());
            ps.setString(3, servico.getDescricao());
            ps.setDate(4, servico.getTempo_execucao());
            ps.setInt(5, servico.getId());
            return ps.executeUpdate() ==1;
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return false;
    }
    
    public boolean apagar(int id){
        String sql = "DELETE FROM servicos WHERE id = ?";
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
