package br.com.Sistema.DAO;

import br.com.Sistema.Bean.ExpedicaoBean;
import br.com.Sistema.Bean.FuncionariosBean;
import br.com.Sistema.Bean.UsuariosBean;
import br.com.Sistema.Database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.sql.Statement.RETURN_GENERATED_KEYS;
import java.util.ArrayList;
import java.util.List;

/**
 * @author @Rafael Alipio Harada (rafhaharada@gmail.com)
 */
public class ExpedicaoDAO {
    public List<ExpedicaoBean> obterTodos() {
        List<ExpedicaoBean> expedicoes = new ArrayList<>();
        String sql = "SELECT * FROM expedicoes ex JOIN usuarios us ON us.id = ex.id_usuario JOIN funcionarios fn ON fn.id = ex.id_funcionario";
        
        try{
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while(resultSet.next()){
                ExpedicaoBean expedicao = new ExpedicaoBean();
                expedicao.setId(resultSet.getInt("ex.id"));
                expedicao.setTipo(resultSet.getString("ex.tipo"));
                expedicao.setNome(resultSet.getString("ex.nome"));
                expedicao.setData_expedicao(resultSet.getDate("ex.data_expedicao"));
                expedicao.setCusto(resultSet.getDouble("ex.custo"));
                
                UsuariosBean usuario = new UsuariosDAO().obterPeloId(resultSet.getInt("ex.id_usuario"));
                expedicao.setUsuario(usuario);
                
                FuncionariosBean funcionario = new FuncionariosDAO().obterPeloIdUsuario(resultSet.getInt("ex.id_funcionario"));
                expedicao.setFuncionario(funcionario);
                
                expedicoes.add(expedicao);
            }
            }catch(SQLException e){
                    e.printStackTrace();
            }finally{
            Conexao.fecharConexao();
        }return expedicoes;
    }
    
    public ExpedicaoBean obterPeloId(int id){
        ExpedicaoBean expedicao = null;
        String sql = "SELECT id, id_usuario, id_funcionario, tipo, data_expedicao, custo FROM expedicoes ex JOIN usuarios us ON us.id = ex.id_usuario JOIN funcionarios fn ON fn.id = ex.id_funcionario WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();
            while(resultSet.next()){
                expedicao = new ExpedicaoBean();
                expedicao.setId(resultSet.getInt("ex.id"));
                expedicao.setTipo(resultSet.getString("ex.tipo"));
                expedicao.setNome(resultSet.getString("ex.nome"));
                expedicao.setData_expedicao(resultSet.getDate("ex.data_expedicao"));
                expedicao.setCusto(resultSet.getDouble("ex.custo"));
                
                UsuariosBean usuario = new UsuariosDAO().obterPeloId(resultSet.getInt("ex.id_usuario"));
                expedicao.setUsuario(usuario);
                
                FuncionariosBean funcionario = new FuncionariosDAO().obterPeloIdUsuario(resultSet.getInt("ex.id_funcionario"));
                expedicao.setFuncionario(funcionario);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return expedicao;
    }
    public int adicionar(ExpedicaoBean expedicao) {
        String sql = "INSERT INTO expedicoes (id_usuario, id_funcionario, tipo, data_expedicao, custo) "
                + "VALUES(?, ?, ?, ?, ?)";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setInt(1, expedicao.getUsuario().getId());
            ps.setInt(2, expedicao.getFuncionario().getId());
            ps.setString(3, expedicao.getTipo());
            ps.setDate(4, expedicao.getData_expedicao());
            ps.setDouble(5, expedicao.getCusto());
            
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
            ps.setInt(1, expedicao.getUsuario().getId());
            ps.setInt(2, expedicao.getFuncionario().getId());
            ps.setString(3, expedicao.getTipo());
            ps.setDate(4, expedicao.getData_expedicao());
            ps.setDouble(5, expedicao.getCusto());
            ps.setInt(6, expedicao.getId());
            
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
