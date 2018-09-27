/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.DAO;

import br.com.Sistema.Bean.EquipamentoBean;
import br.com.Sistema.Database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.sql.Statement.RETURN_GENERATED_KEYS;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Cidmar da Silva Ribeiro (cidmardsr@gmail.com)
 */
public class EquipamentoDAO {
    public List<EquipamentoBean> obterTodos() {
        List<EquipamentoBean> equipamentos = new ArrayList<>();
        String sql = "SELECT * FROM equipamentos";
        try {
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();

            while (resultSet.next()) {
                EquipamentoBean equipamento = new EquipamentoBean();
                equipamento.setId(resultSet.getInt("id"));
                equipamento.setNome(resultSet.getString("nome"));
                equipamento.setDescricao(resultSet.getString("descricao"));
                equipamento.setStatus(resultSet.getString("status"));
                equipamento.setQuantidade(resultSet.getInt("quantidade"));
                equipamento.setValor(resultSet.getDouble("valor"));
                equipamento.setTempo_de_uso(resultSet.getString("tempo_de_uso"));
                equipamentos.add(equipamento);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return equipamentos;
    }

    public EquipamentoBean obterPeloId(int id) {
        EquipamentoBean equipamento = null;
        String sql = "SELECT nome, descricao, status, quantidade, valor, tempo_de_uso FROM equipamentos WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();

            while (resultSet.next()) {
                equipamento = new EquipamentoBean();
                equipamento.setId(resultSet.getInt("id"));
                equipamento.setNome(resultSet.getString("nome"));
                equipamento.setDescricao(resultSet.getString("descricao"));
                equipamento.setStatus(resultSet.getString("status"));
                equipamento.setQuantidade(resultSet.getInt("quantidade"));
                equipamento.setValor(resultSet.getDouble("valor"));
                equipamento.setTempo_de_uso(resultSet.getString("tempo_de_uso"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return equipamento;
    }

    public int adicionar(EquipamentoBean equipamento) {
        String sql = "INSERT INTO equipamentos(nome, descricao, status, quantidade, valor, tempo_de_uso) VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setString(1, equipamento.getNome());
            ps.setString(2, equipamento.getDescricao());
            ps.setString(3, equipamento.getStatus());
            ps.setInt(4, equipamento.getQuantidade());
            ps.setDouble(5, equipamento.getValor());
            ps.setString(6, equipamento.getTempo_de_uso());
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

    public boolean alterar(EquipamentoBean equipamento) {
        try {
            String sql = "UPDATE equipamentos SET nome = ?, descricao = ?, status = ?, quantidade = ?, valor = ?, tempo_de_uso = ? WHERE id = ?";
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setString(1, equipamento.getNome());
            ps.setString(2, equipamento.getDescricao());
            ps.setString(3, equipamento.getStatus());
            ps.setInt(4, equipamento.getQuantidade());
            ps.setDouble(5, equipamento.getValor());
            ps.setString(6, equipamento.getTempo_de_uso());
            ps.setInt(7, equipamento.getId());

            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public boolean excluir(int id) {
        String sql = "DELETE FROM equipamentos WHERE id = ?";
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
