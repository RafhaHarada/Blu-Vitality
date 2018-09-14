package br.com.Sistema.DAO;

import br.com.Sistema.Bean.GastosFuncionariosBean;
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
public class GastosFuncionariosDAO {

    public List<GastosFuncionariosBean> obterTodos() {
        List<GastosFuncionariosBean> gastosFuncionarios = new ArrayList<>();
        String sql = "SELECT * FROM gastosFuncioarios";
        try {
            Statement st = Conexao.abrirConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();

            while (resultSet.next()) {
                GastosFuncionariosBean gastoFuncionario = new GastosFuncionariosBean();
                gastoFuncionario.setId(resultSet.getInt("id"));
                gastoFuncionario.setSalario_mensal(resultSet.getDouble("salario_mensal"));
                gastoFuncionario.setFerias_anuais_remuneradas(resultSet.getDouble("ferias_anuais_remuneradas"));
                gastoFuncionario.setUm_terco_sobre_ferias(resultSet.getDouble("um_terco_sobre_ferias"));
                gastoFuncionario.setDecimo_terceiro_salario(resultSet.getDouble("decimo_terceiro_salario"));
                gastoFuncionario.setAviso_previo(resultSet.getDouble("aviso_previo"));
                gastoFuncionario.setFgts_sobre_salario_mensal(resultSet.getDouble("fgts_obre_salario_mensal"));
                gastoFuncionario.setFgts_sobre_decimo_terceiro_aviso_previo_ferias(resultSet.getDouble("fgts_sobre_decimo_terceiro_aviso_previo_ferias"));
                gastoFuncionario.setMulta_fgts(resultSet.getDouble("multa_fgts"));
                gastoFuncionario.setFerias_sobre_aviso_previo(resultSet.getDouble("ferias_sobre_aviso_previo"));
                gastoFuncionario.setDecimo_terceiro_sobre_aviso_previo(resultSet.getDouble("decimo_terceiro_sobre_aviso_previo"));
                gastoFuncionario.setUm_terco_ferias_sobre_aviso_previo(resultSet.getDouble("um_terco_ferias_sobre_aviso_previo"));
                gastoFuncionario.setFgts_sobre_recisao(resultSet.getDouble("fgts_sobre_recisao"));
                gastoFuncionario.setInss_sobre_salario(resultSet.getDouble("inss_sobre_salario"));
                gastoFuncionario.setInss_sobre_ferias_e_decimo_terceiro(resultSet.getDouble("inss_sobre_ferias_e_decimo_terceiro"));
                gastoFuncionario.setIndenizacao_um_dia_de_salario(resultSet.getDouble("indenizacao_um_dia_de_salario"));
                gastoFuncionario.setTotal(resultSet.getDouble("total"));
                gastosFuncionarios.add(gastoFuncionario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return gastosFuncionarios;
    }

    public GastosFuncionariosBean obterPeloId(int id) {
        GastosFuncionariosBean gastoFuncionario = null;
        String sql = "SELECT id, salario_mensal, ferias_anuais_remuneradas, um_terco_sobre_ferias, decimo_terceiro_salario, "
                + "aviso_previo, fgts_sobre_salario_mensal, fgts_sobre_decimo_terceiro_aviso_previo_ferias, multa_fgts, "
                + "ferias_sobre_aviso_previo, decimo_terceiro_sobre_aviso_previo, um_terco_ferias_sobre_aviso_previo, "
                + "fgts_sobre_recisao, inss_sobre_salario, inss_sobre_ferias_e_decimo_terceiro, indenizacao_um_dia_de_salario, total";
        try {
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet resultSet = ps.getResultSet();

            while (resultSet.next()) {
                gastoFuncionario = new GastosFuncionariosBean();
                gastoFuncionario.setId(resultSet.getInt("id"));
                gastoFuncionario.setSalario_mensal(resultSet.getDouble("salario_mensal"));
                gastoFuncionario.setFerias_anuais_remuneradas(resultSet.getDouble("ferias_anuais_remuneradas"));
                gastoFuncionario.setUm_terco_sobre_ferias(resultSet.getDouble("um_terco_sobre_ferias"));
                gastoFuncionario.setDecimo_terceiro_salario(resultSet.getDouble("decimo_terceiro_salario"));
                gastoFuncionario.setAviso_previo(resultSet.getDouble("aviso_previo"));
                gastoFuncionario.setFgts_sobre_salario_mensal(resultSet.getDouble("fgts_obre_salario_mensal"));
                gastoFuncionario.setFgts_sobre_decimo_terceiro_aviso_previo_ferias(resultSet.getDouble("fgts_sobre_decimo_terceiro_aviso_previo_ferias"));
                gastoFuncionario.setMulta_fgts(resultSet.getDouble("multa_fgts"));
                gastoFuncionario.setFerias_sobre_aviso_previo(resultSet.getDouble("ferias_sobre_aviso_previo"));
                gastoFuncionario.setDecimo_terceiro_sobre_aviso_previo(resultSet.getDouble("decimo_terceiro_sobre_aviso_previo"));
                gastoFuncionario.setUm_terco_ferias_sobre_aviso_previo(resultSet.getDouble("um_terco_ferias_sobre_aviso_previo"));
                gastoFuncionario.setFgts_sobre_recisao(resultSet.getDouble("fgts_sobre_recisao"));
                gastoFuncionario.setInss_sobre_salario(resultSet.getDouble("inss_sobre_salario"));
                gastoFuncionario.setInss_sobre_ferias_e_decimo_terceiro(resultSet.getDouble("inss_sobre_ferias_e_decimo_terceiro"));
                gastoFuncionario.setIndenizacao_um_dia_de_salario(resultSet.getDouble("indenizacao_um_dia_de_salario"));
                gastoFuncionario.setTotal(resultSet.getDouble("total"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return gastoFuncionario;
    }

    public int adicionar(GastosFuncionariosBean gastoFuncionario) {
        String sql = "INSERT INTO gastoFuncioario(id, salario_mensal, ferias_anuais_remuneradas, um_terco_sobre_ferias, decimo_terceiro_salario, "
                + "aviso_previo, fgts_sobre_salario_mensal, fgts_sobre_decimo_terceiro_aviso_previo_ferias, multa_fgts, "
                + "ferias_sobre_aviso_previo, decimo_terceiro_sobre_aviso_previo, um_terco_ferias_sobre_aviso_previo, "
                + "fgts_sobre_recisao, inss_sobre_salario, inss_sobre_ferias_e_decimo_terceiro, indenizacao_um_dia_de_salario, total) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps = Conexao.abrirConexao().prepareStatement(sql, RETURN_GENERATED_KEYS);
            
        }
    }
}
