package br.com.Sistema.DAO.Usuario;

import br.com.Sistema.Database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Cidmar
 */
public class UsuariosDAO {
    public int adicionar(UsuariosBean usuario){
        String sql = "INSERT INTO usuarios(Nome, estado_civil, idade, sexo, login, senha, "
                   + "cpf, rg, telefone, email, endereco, naturalidade, data_nascimento, nome_fic)" 
                   + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try{
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql, 
            PreparedStatement.RETURN_GENERATED_KEYS);
            
            int quantidade = 1;
            ps.setString(quantidade++, usuario.getNome());
            ps.setString(quantidade++, usuario.getEstado_civil());
            ps.setByte(quantidade++, usuario.getIdade());
            ps.setChar(quantidade++, usuario.getIdade());
            ps.setString(quantidade++, usuario.getLogin());
            ps.setString(quantidade++, usuario.getSenha());
            ps.setString(quantidade++, usuario.getCpf());
            ps.setString(quantidade++, usuario.getRg());
            ps.setString(quantidade++, usuario.getTelefone());
            ps.setString(quantidade++, usuario.getEmail());
            ps.setString(quantidade++, usuario.getEdereco());
            ps.setString(quantidade++, usuario.getNaturalidade());
            ps.setDate(quantidade++, usuario.getData_nascimento());
            ps.setString(quantidade++, usuario.getNome_fic());
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            
            if(resultSet.next()){
                
            }
            
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return-1;
    }
}
