<div class="collapsible-header">
    <i class="material-icons"></i>
    Quarentena
    <span class="badge "></span></div>
<div class="collapsible-body">
    <form>
        <span>Numero do Quarto:</span>
        <input type="number" name="numero" id="quarentena-numero-quarto">
        <span>TIPO:</span>
    </form>
    <select id="quarto-quarentena-tipo">
        <option value="null"></option>
        <option value="UTI">UTI</option>
        <option value="SemiIntencivo">Semi - Intensivo</option>
        <option value="salaDeOperacao"> Sala de Cirurgia</option>
        <option value="leito">Leito</option>
        <option value="consultorio">Consultorio</option>
        <option value="recuperacao">Sala de recuperação</option>
    </select>
    <a class="waves-effect waves-light btn-small" id="quarto-mover-quarentena">Adicionar</a>
    <a class="waves-effect waves-light btn-small" id="quarto-remover-quarentena">Remover</a>
</div>