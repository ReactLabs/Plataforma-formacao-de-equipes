<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

    <form:form role="form" class="form-control" action="/aluno/form" id="id-form" method="POST" modelAttribute="aluno">

        <span> Seu nome:</span><form:input type="text" id="nome" path="nome" /></br>
        <span> Depois de uma emoção, você fica impressionado por muito tempo, gosta de relembrar as emoções (agradáveis ou desagradáveis) do passado?</span></br>
        <form:radiobutton name="teste1" value="1" id="idade" path="pergunta1" />Sim</br>
        <form:radiobutton name="teste1" value="0"  id="idade" path="pergunta1" />Não</br>
        <span> Fica facilmente acanhado(tímido) na presença de pessoas?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta2" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta2" />Não</br>
        <span>  Dá prioridade ao que deve ser feito e o faz primeiramente, deixando o resto para depois? </span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta3" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta3" />Não</br>
        <span> Fica facilmente emocionado? Empalidece, chora, ri, fica nervoso, assusta-se? Bate o coração? Fecha-se a garganta?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta4" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta4" />Não</br>
        <span> Pensa de antemão no que pode acontecer, e prepara-se, tanto quanto possível, com antecedência, para a nova situação?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta5" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta5" />Não</br>
        <span> Procura resolver sozinho as dificuldades, sem ajuda?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta6" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta6" />Não</br>
        <span> Fica magoado facilmente?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta7" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta7" />Não</br>
        <span> Muda facilmente de humor? Isto é, passando da alegria para a tristeza, da tagarelice para o mutismo, do entusiasmo ao desânimo?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta8" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta8" />Não</br>
        <span> Leva tempo para se habituar em caso de mudança (de casa, localidade, escola)?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta9" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta9" />Não</br>
        <span> Num trabalho prolongado, a dedicação aplicada no fim é equivalente a do começo?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta10" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta10" />Não</br>
        <span> Quando estais livre, procura por trabalhos, estudos ou ocupações, invés de distrações, passatempos e divertimentos?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta11" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta11" />Não</br>
        <span> Gosta de conservar os mesmos hábitos (costumes), os mesmos amigos, os mesmos objetos etc?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta12" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta12" />Não</br>
        <span> Em caso de dificuldade ou fracasso, em vez de desanimar, recomeça tantas vezes quantas for necessário?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta13" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta13" />Não</br>
        <span> Comove-se ao ouvir ou ler um fato emocionante quase tanto quanto diante de um acontecimento real?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta14" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta14" />Não</br>
        <span> Demora para se reconciliar (depois de uma desavença, afronta etc) ?</span></br>
        <form:radiobutton name="teste2" value="1" id="idade" path="pergunta15" />Sim</br>
        <form:radiobutton name="teste2" value="0"  id="idade" path="pergunta15" />Não</br>


        <input type="submit">
    </form:form>





<%--<form action="AlunoForm" method="post">

    Digite Seu nome: <input type="text" name="nome">

</form>--%>
