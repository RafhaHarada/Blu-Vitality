<%-- 
    Document   : index
    Created on : 27/08/2018, 08:14:38
    Author     : Nattana Matos
--%>

<jsp:include page="../model/header.jsp"/>

<div class="container center teal">
    <h1>Usuarios</h1>

    <div class="row red">
        <div class="col s6 red">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">textsms</i>
                    <input type="text" id="autocomplete-input" class="autocomplete">
                    <label for="autocomplete-input">Nome completo</label>
                </div>
            </div>
        </div>

        
            <label>
                <input class="with-gap" name="group1" type="radio"  />
                <span>Solteiro(a)</span>
            </label>
       
            <label>
                <input class="with-gap" name="group1" type="radio"  />
                <span>Casado(a)</span>
            </label>
       
            <label>
                <input class="with-gap" name="group1" type="radio"  />
                <span>Divorciado(a)</span>
            </label>
      
            <label>
                <input class="with-gap" name="group1" type="radio"  />
                <span>Viúvo(a)</span>
            </label>
            <label>
                <input type="text" class="Data de nascimento" value="Data de nascimento">

            </label>
       



        <div class="container med left "style="margin-left:150px;">
            <a class="waves-effect waves-light btn-large" href="#">Cadastrar</a>

        </div>
    </div>
</div>





<jsp:include page="../model/footer.jsp"/>
