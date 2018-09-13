<div class="collapsible-header">
    <i class="material-icons"></i>
    Adicionar
    <span class="badge"></span>
</div>
<div class="collapsible-body container">
    <form name="fomularioCadastro">
    <label for="numero">Numero do Quarto:</label>
    <input type="number" name="numero" id="quarto-cadastro-numero-quarto" onsubmit="return validacao()">
    <label>Tipo:</label>
    <select id="quarto-cadastro-tipo">
        <option value="null"></option>
        <option value="UTI">UTI</option>
        <option value="SemiIntencivo">Semi - Intensivo</option>
        <option value="salaDeOperacao"> Sala de Cirurgia</option>
        <option value="leito">Leito</option>
        <option value="consultorio">Consultorio</option>
        <option value="recuperacao">Sala de recuperação</option>
    </select>
    <span class="">Status:</span>
      <label>
        <input id="quarto-cadastro-status" name="sexo" type="radio" checked />
        <span>Ativo</span>
      </label>
      <label>
        <input name="sexo" type="radio" />
        <span>invativo</span>
      </label>
    </form>
    <a class="waves-effect  btn-small" id="quarto-cadastro-salvar">SALVAR</a>
</div>

<script type="text/javascript" src="jsadm/quarto.js"></script>