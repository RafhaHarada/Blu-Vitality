/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistema.DAO;

import br.com.Sistema.Bean.GastosGeraisBean;
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
public class GastosGeraisDAO {
    public List<GastosGeraisBean> obterTodos() {
        List<GastosGeraisBean> gastosGerais = new ArrayList<>();
        String sql = "SELECT * FROM gastosGerais";
        try {
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();

            while (resultSet.next()) {
                GastosGeraisBean gastoGeral = new GastosGeraisBean();
                gastoGeral.setId(resultSet.getInt("id"));
                gastoGeral.setManutencaoEquipamentos(resultSet.getDouble("manutencaoEquipamentos"));
                gastoGeral.setLimpeza(resultSet.getDouble("limpeza"));
                gastoGeral.setManutencaoEstrutura(resultSet.getDouble("manutencaoEstrutura"));
                gastoGeral.setAlimentacao(resultSet.getDouble("alimentacao"));
                gastoGeral.setMateriaisDeConsumo(resultSet.getDouble("materiaisDeConsumo"));
                gastoGeral.setMedicamentos(resultSet.getDouble("medicamentos"));
                gastoGeral.setImprevistos(resultSet.getDouble("imprevistos"));
                gastoGeral.setTotal(resultSet.getDouble("total"));
                gastosGerais.add(gastoGeral);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return gastosGerais;
    }

    public GastosGeraisBean obterPeloId(int id) {
        GastosGeraisBean gastoGeral = null;
        String sql = "SELECT id, manutencaoEquipamentos, limpeza, menutencaoEstrutura, alimentacao, materiaisDeConsumo, medicamentos, imprevistos, total FROM gastosGerais WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();

            while (resultSet.next()) {
                gastoGeral = new GastosGeraisBean();
                gastoGeral.setId(resultSet.getInt("id"));
                gastoGeral.setManutencaoEquipamentos(resultSet.getDouble("manutencaoEquipamentos"));
                gastoGeral.setLimpeza(resultSet.getDouble("limpeza"));
                gastoGeral.setManutencaoEstrutura(resultSet.getDouble("manutencaoEstrutura"));
                gastoGeral.setAlimentacao(resultSet.getDouble("alimentacao"));
                gastoGeral.setMateriaisDeConsumo(resultSet.getDouble("materiaisDeConsumo"));
                gastoGeral.setMedicamentos(resultSet.getDouble("medicamentos"));
                gastoGeral.setImprevistos(resultSet.getDouble("imprevistos"));
                gastoGeral.setTotal(resultSet.getDouble("total"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return gastoGeral;
    }

    public int adicionar(GastosGeraisBean gastoGeral) {
        String sql = "INSERT INTO gastoGeral(manutencaoEquipamentos, limpeza, menutencaoEstrutura, alimentacao, materiaisDeConsumo, medicamentos, imprevistos, total) VALUES(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            ps.setDouble(1, gastoGeral.getManutencaoEquipamentos());
            ps.setDouble(2, gastoGeral.getLimpeza());
            ps.setDouble(3, gastoGeral.getManutencaoEstrutura());
            ps.setDouble(4, gastoGeral.getAlimentacao());
            ps.setDouble(5, gastoGeral.getMateriaisDeConsumo());
            ps.setDouble(6, gastoGeral.getMedicamentos());
            ps.setDouble(6, gastoGeral.getImprevistos());
            ps.setDouble(7, gastoGeral.getTotal());
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

    public boolean alterar(GastosGeraisBean gastoGeral) {
        try {
            String sql = "UPDATE gastoGeral SET manutencaoEquipamentos = ?, limpeza = ?, menutencaoEstrutura = ?, alimentacao = ?, materiaisDeConsumo = ?, medicamentos = ?, imprevistos = ?, total = ? WHERE id = ?";
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setDouble(1, gastoGeral.getManutencaoEquipamentos());
            ps.setDouble(2, gastoGeral.getLimpeza());
            ps.setDouble(3, gastoGeral.getManutencaoEstrutura());
            ps.setDouble(4, gastoGeral.getAlimentacao());
            ps.setDouble(5, gastoGeral.getMateriaisDeConsumo());
            ps.setDouble(6, gastoGeral.getMedicamentos());
            ps.setDouble(6, gastoGeral.getImprevistos());
            ps.setDouble(7, gastoGeral.getTotal());
            ps.setInt(8, gastoGeral.getId());

            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public boolean excluir(int id) {
        String sql = "DELETE FROM gastosGerais WHERE id = ?";
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
