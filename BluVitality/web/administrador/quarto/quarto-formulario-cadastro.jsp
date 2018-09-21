



            <form action="/quarto/adicionar">
                <label for="numero">Numero do Quarto:</label>
                <input type="number" name="numero_quarto" id="quarto-cadastro-numero-quarto">
                <label>Tipo:</label>
                <select id="quarto-cadastro-tipo" name="tipo">
                    <option value="null"></option>
                    <option value="UTI">UTI</option>
                    <option value="SemiIntencivo">Semi - Intensivo</option>
                    <option value="salaDeOperacao"> Sala de Cirurgia</option>
                    <option value="leito">Leito</option>
                    <option value="consultorio">Consultorio</option>
                    <option value="recuperacao">Sala de recuperação</option>
                </select>
                <a class="waves-effect  btn-small" id="quarto-cadastro-salvar">SALVAR</a>
            </form>
       