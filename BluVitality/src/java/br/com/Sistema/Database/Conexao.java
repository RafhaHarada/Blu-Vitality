package br.com.Sistema.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Alunos
 */
public class Conexao {
    
    private static final String HOST = "jdbc:mysql://localhost/bancoAlunos";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    private static final String CLASS = "com.mysql.jdbc.Driver";
    private static Connection conexao;
    
    public static Connection abrirConexao(){
        try {
            Class.forName(CLASS);
            conexao = DriverManager.getConnection(HOST, USER, PASSWORD);
            return conexao;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public static void fecharConexao(){
        try {
            if(conexao != null){
                conexao.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
