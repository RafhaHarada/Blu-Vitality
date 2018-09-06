<div class="collapsible-header">
    <i class="material-icons"></i>
    Adicionar
    <span class="badge"></span>
</div>
<div class="collapsible-body">

    <label for="numero">Numero do Quarto:</label>
    <input type="number" name="numero" id="quarto-cadastro-numero-quarto">
    <label>Tipo:</label>
    <select id="quarto-cadastro-tipo">
        <option value="UTI">UTI</option>
        <option value="SemiIntencivo">Semi - Intensivo</option>
        <option value="salaDeOperacao"> Sala de Cirurgia</option>
        <option value="leito">Leito</option>
        <option value="consultorio">Consultorio</option>
        <option value="recuperacao">Sala de recuperação</option>
    </select>
    <span class="flow-text">Status:</span>
    <select id="quarto-cadastro-status">
        <option value="ativo">Ativo</option>
        <option value="inativo">Inativo</option>
    </select>

    <a class="waves-effect waves-light btn-small" id="quarto-cadastro-salvar">SALVAR</a>
</div>