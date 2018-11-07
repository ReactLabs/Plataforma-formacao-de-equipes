<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

    <form:form class="form-control" action="/aluno/form" id="id-form" method="POST" modelAttribute="aluno">

        <div class="form-group">
            <label> Seu nome: </label>
            <form:input type="text" name="nome" path="nome" />
        </div>
        <div class="form-group">
                <label> 1) Depois de uma emoção, você fica impressionado por muito tempo, gosta de relembrar as emoções (agradáveis ou desagradáveis) do passado?</label>
                <div class="checkbox">
                    <label for="pergunta1s"> Sim</label>
                    <form:radiobutton name="teste1" value="1"  id="pergunta1s" path="pergunta1" />
                    <label for="pergunta1n"> Não</label>
                    <form:radiobutton name="teste1" value="0"  id="pergunta1n"  path="pergunta1" /><br>
                </div>
        </div>


        <div class="form-group">
            <label>2) Fica facilmente acanhado(tímido) na presença de pessoas? </label>
            <div class="checkbox">
                <label for="pergunta2s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta2s" path="pergunta2" />
                <label for="pergunta2n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta2n"  path="pergunta2" /><br>
            </div>
        </div>

        <div class="form-group">
            <label>3) Dá prioridade ao que deve ser feito e o faz primeiramente, deixando o resto para depois? </label>
            <div class="checkbox">
                <label for="pergunta3s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta3s" path="pergunta3" />
                <label for="pergunta3n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta3n"  path="pergunta3" /><br>
            </div>
        </div>

        <div class="form-group">
            <label>4) Fica facilmente emocionado? Empalidece, chora, ri, fica nervoso, assusta-se? Bate o coração? Fecha-se a garganta?</label>
            <div class="checkbox">
                <label for="pergunta4s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta4s" path="pergunta4" />
                <label for="pergunta4n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta4n"  path="pergunta4" /><br>
            </div>
        </div>

        <div class="form-group">
            <label> 5) Pensa de antemão no que pode acontecer, e prepara-se, tanto quanto possível, com antecedência, para a nova situação?</label>
            <div class="checkbox">
                <label for="pergunta5s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta5s" path="pergunta5" />
                <label for="pergunta5n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta5n"  path="pergunta5" /><br>
            </div>
        </div>


        <div class="form-group">
            <label>6) Procura resolver sozinho as dificuldades, sem ajuda?</label>
            <div class="checkbox">
                <label for="pergunta6s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta6s" path="pergunta6" />
                <label for="pergunta6n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta6n"  path="pergunta6" /><br>
            </div>
        </div>

        <div class="form-group">
            <label> 7) Fica magoado facilmente?</label>
            <div class="checkbox">
                <label for="pergunta7s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta7s" path="pergunta7" />
                <label for="pergunta7n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta7n"  path="pergunta7" /><br>
            </div>
        </div>

        <div class="form-group">
            <label> 8) Muda facilmente de humor? Isto é, passando da alegria para a tristeza, da tagarelice para o mutismo, do entusiasmo ao desânimo? </label>
            <div class="checkbox">
                <label for="pergunta8s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta8s" path="pergunta8" />
                <label for="pergunta8n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta8n"  path="pergunta8" /><br>
            </div>
        </div>


        <div class="form-group">
            <label>9) Leva tempo para se habituar em caso de mudança (de casa, localidade, escola)? </label>
            <div class="checkbox">
                <label for="pergunta9s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta9s" path="pergunta9" />
                <label for="pergunta9n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta9n"  path="pergunta9" /><br>
            </div>
        </div>


        <div class="form-group">
            <label> 10) Num trabalho prolongado, a dedicação aplicada no fim é equivalente a do começo?  </label>
            <div class="checkbox">
                <label for="pergunta10s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta10s" path="pergunta10" />
                <label for="pergunta10n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta10n"  path="pergunta10" /><br>
            </div>
        </div>


        <div class="form-group">
            <label> 11) Quando estais livre, procura por trabalhos, estudos ou ocupações, invés de distrações, passatempos e divertimentos?  </label>
            <div class="checkbox">
                <label for="pergunta11s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta11s" path="pergunta11" />
                <label for="pergunta11n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta11n"  path="pergunta11" /><br>
            </div>
        </div>


        <div class="form-group">
            <label> 12) Gosta de conservar os mesmos hábitos (costumes), os mesmos amigos, os mesmos objetos etc?  </label>
            <div class="checkbox">
                <label for="pergunta12s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta12s" path="pergunta12" />
                <label for="pergunta12n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta12n"  path="pergunta12" /><br>
            </div>
        </div>

        <div class="form-group">
            <label>13) Em caso de dificuldade ou fracasso, em vez de desanimar, recomeça tantas vezes quantas for necessário?</label>
            <div class="checkbox">
                <label for="pergunta13s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta13s" path="pergunta13" />
                <label for="pergunta13n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta13n"  path="pergunta13" /><br>
            </div>
        </div>

        <div class="form-group">
            <label> 14) Comove-se ao ouvir ou ler um fato emocionante quase tanto quanto diante de um acontecimento real?  </label>
            <div class="checkbox">
                <label for="pergunta14s"> Sim</label>
                <form:radiobutton name="teste14" value="1"  id="pergunta14s" path="pergunta14" />
                <label for="pergunta14n"> Não</label>
                <form:radiobutton name="teste14" value="0"  id="pergunta14n"  path="pergunta14" /><br>
            </div>
        </div>

        <div class="form-group">
            <label>15) Demora para se reconciliar (depois de uma desavença, afronta etc) ?</label>
            <div class="checkbox">
                <label for="pergunta15s"> Sim</label>
                <form:radiobutton name="teste1" value="1"  id="pergunta15s" path="pergunta15" />
                <label for="pergunta15n"> Não</label>
                <form:radiobutton name="teste1" value="0"  id="pergunta15n"  path="pergunta15" /><br>
            </div>
        </div>



        <input type="submit">
    </form:form>





<%--<form action="AlunoForm" method="post">

    Digite Seu nome: <input type="text" name="nome">

</form>--%>
