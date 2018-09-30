package br.com.Sistema.Web.Administrador.financeiro;

import br.com.Sistema.Bean.CargosBean;
import br.com.Sistema.Bean.ConvenioBean;
import br.com.Sistema.Bean.CustoBean;
import br.com.Sistema.Bean.LucroBean;
import br.com.Sistema.Bean.ReceitaBean;
import br.com.Sistema.Bean.UsuarioBean;
import br.com.Sistema.DAO.CustoDAO;
import br.com.Sistema.DAO.FuncionarioDAO;
import br.com.Sistema.DAO.LucroDAO;
import br.com.Sistema.DAO.ReceitaDAO;
import br.com.Sistema.DAO.UsuarioDAO;
import br.com.Sistema.Web.IndexRedirect;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author @Rafael Alipio Harada (rafhaharada@gmail.com)
 */
@WebServlet("/administrador/financeiro/store")
public class FinanceiroStore extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IndexRedirect.redirecionar(req, resp, "usuario");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ReceitaBean receita = new ReceitaBean();
        CustoBean custo = new CustoBean();
        LucroBean lucro = new LucroBean();

        String dataBr[] = req.getParameter("data").split("/");
        String dataEn = dataBr[2] + "-" + dataBr[1] + "-" + dataBr[0];
        Calendar hoje = Calendar.getInstance();
        Date hojeSql = new Date((hoje.getTime()).getTime());
        int id = -1;
        List<LucroBean> lucros = new LucroDAO().obterTodos();
        for (int i = 0; i < lucros.size(); i++) {
            if (lucros.get(i).getDataLucro().toString().substring(0, 3).equals(dataBr[2])) {
                if (lucros.get(i).getDataLucro().toString().substring(5, 6).equals(dataBr[1])) {
                    resp.sendRedirect("/administrador/financeiro/cadastro");
                }
            }
        }
        if (lucro.getDataLucro() == null) {
            resp.sendRedirect("/administrador/financeiro/cadastro");
        } else if (Date.valueOf(dataEn).after(hojeSql)) {
            resp.sendRedirect("/administrador/financeiro/cadastro");
        } else {
            //-----------------------RECEITA
            List<UsuarioBean> usuarios = new UsuarioDAO().obterTodos();
            List<ConvenioBean> convenios = new ArrayList<>();
            double receitaTotal = 0.0;
            for (int i = 0; i < usuarios.size(); i++) {
                if (usuarios.get(i).isUsaConvenio()) {
                    convenios.add(usuarios.get(i).);
                    receitaTotal += usuarios.get(i)..getCusto();
                }
            }
            receita.setConvenios(convenios);
            receita.setPagamentoConvenio(receitaTotal);
            receita.setPagamentoAVista(Double.parseDouble(req.getParameter("pagamento-a-vista")));
            receitaTotal += receita.getPagamentoAVista();
            receita.setDataReceita(java.sql.Date.valueOf(dataEn));
            receita.setId(new ReceitaDAO().adicionar(receita));

            //-----------------------CUSTO
            custo.setManutencao(Double.parseDouble(req.getParameter("manutencao")));
            List<CargosBean> salario = new FuncionarioDAO().obterCargos();
            Double salarioFuncionarios = 0.0;
            for (int i = 0; i < salario.size(); i++) {
                salarioFuncionarios += salario.get(i).getSalario();
            }
            custo.setSalarioFuncionarios(salarioFuncionarios);
            custo.setDataCusto(java.sql.Date.valueOf(dataEn));
            double custoTotal = custo.getManutencao() + custo.getSalarioFuncionarios();
            custo.setId(new CustoDAO().adicionar(custo));

            //-----------------------LUCRO
            lucro.setIdCusto(custo.getId());
            lucro.setIdReceita(receita.getId());
            lucro.setDataLucro(java.sql.Date.valueOf(dataEn));
            lucro.setTotal(receitaTotal - custoTotal);
            lucro.setReceita(receita);
            lucro.setCusto(custo);
            lucro.setId(new LucroDAO().adicionar(lucro));
            resp.sendRedirect("/administrador/financeiro");
        }
    }
}
