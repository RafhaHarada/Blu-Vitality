package br.com.Sistema.DAO;

import br.com.Sistema.Bean.FuncionariosBean;
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
public class FuncionariosDAO {
    
    public List<FuncionariosBean> obterTodos(){
        List<FuncionariosBean> funcionarios = new ArrayList<>();
        String sql = "SELECT id, id_usuario, id_cargo FROM funcionarios";
        try{
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            
            while(resultSet.next()){
                FuncionariosBean funcionario = new FuncionariosBean();
                funcionario.setId(resultSet.getInt("id"));
                funcionario.setId_cargo(resultSet.getInt("id_cargo"));
                funcionario.setId_usuario(resultSet.getInt("id_usuario"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return funcionarios;
    }
    
    public FuncionariosBean obterPeloId(int id){
        FuncionariosBean funcionario = null;
        String sql = "SELECT id, id_cargo, id_usuario FROM funcionarios WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();
            while(resultSet.next()){
                funcionario = new FuncionariosBean();
                funcionario.setId(resultSet.getInt("id"));
                funcionario.setId_cargo(resultSet.getInt("id_cargo"));
                funcionario.setId_usuario(resultSet.getInt("id_usuario"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return funcionario;
    }
    
    public int adicionar(FuncionariosBean funcionario){
        String sql = "INSERT INTO funcionarios(id, id_cargo, id_usuario) VALUES(?, ?, ?)";
        try{
        PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
        ps.setInt(1, funcionario.getId_cargo());
        ps.setInt(2, funcionario.getId_usuario());
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
    
    public boolean alterar(FuncionariosBean funcionario){
        try{
        String sql = "UPDATE funcionarios SET id_cargo = ?, id_usuario = ? WHERE id = ?";
          PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
          ps.setInt(1, funcionario.getId_cargo());
          ps.setInt(2, funcionario.getId_usuario());
          ps.setInt(3, funcionario.getId());
          
          return ps.executeUpdate() ==1;
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return false;
    }
    
    public boolean apagar(int id){
        String sql = "DELETE FROM funcionarios WHERE id = ?";
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
