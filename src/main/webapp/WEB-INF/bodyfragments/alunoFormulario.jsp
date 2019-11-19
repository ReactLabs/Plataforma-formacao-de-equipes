<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<c:if test="${mensagem != null}">
    <div class="row">
        <h3> ATENÇÃO</h3>
        <div class="alert alert-danger" style="margin: 0px 35px 5px 0px !important; padding: 10px !important;">
            <strong>${mensagem}</strong>
        </div>
    </div>
</c:if>


<div class="panel panel-headline">
    <div class="panel-heading">
        <h3 class="panel-title">Preencha o questionario para defirmos o seu perfil</h3>
    </div>
    <div class="panel-body">
        <form:form role="form" action="/aluno/form" id="id-form" method="POST" modelAttribute="aluno">
            <div class="col-md-6">
                <form:input type="text" class="form-control" placeholder="Seu nome" name="nome" path="nome" />
                <br>
                <form:input type="hidden" class="form-control" placeholder="Pertence à turma" name="nome" path="id_turma" readonly="true" />

                <form:input type="text" class="form-control" placeholder="Informe a senha da turma informada pelo seu professor" name="nome" path="senha" />
                <br>
            </div>

            <table class="table">
                <tbody>
                <tr>
                    <td>Depois de uma emoção, você fica impressionado por muito tempo, gosta de relembrar as emoções (agradáveis ou desagradáveis) do passado?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p1" value="1" path="pergunta1" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p1" value="0" path="pergunta1" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Fica facilmente acanhado(tímido) na presença de pessoas?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p2" value="1" path="pergunta2" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p2" value="0" path="pergunta2" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Dá prioridade ao que deve ser feito e o faz primeiramente, deixando o resto para depois?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p3" value="1" path="pergunta3" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p3" value="0" path="pergunta3" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Fica facilmente emocionado? Empalidece, chora, ri, fica nervoso, assusta-se? Bate o coração? Fecha-se a garganta?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p4" value="1" path="pergunta4" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p4" value="0" path="pergunta4" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Pensa de antemão no que pode acontecer, e prepara-se, tanto quanto possível, com antecedência, para a nova situação?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p5" value="1" path="pergunta5" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p5" value="0" path="pergunta5" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Procura resolver sozinho as dificuldades, sem ajuda?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p6" value="1" path="pergunta6" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p6" value="0" path="pergunta6" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Fica magoado facilmente?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p7" value="1" path="pergunta7" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p7" value="0" path="pergunta7" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Muda facilmente de humor? Isto é, passando da alegria para a tristeza, da tagarelice para o mutismo, do entusiasmo ao desânimo?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p8" value="1" path="pergunta8" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p8" value="0" path="pergunta8" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Leva tempo para se habituar em caso de mudança (de casa, localidade, escola)?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p9" value="1" path="pergunta9" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p8" value="0" path="pergunta9" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Num trabalho prolongado, a dedicação aplicada no fim é equivalente a do começo?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p10" value="1" path="pergunta10" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p10" value="0" path="pergunta10" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Quando está livre, procura por trabalhos, estudos ou ocupações, em vez de distrações, passatempos e diversão?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p11" value="1" path="pergunta11" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p11" value="0" path="pergunta11" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Gosta de conservar os mesmos hábitos (costumes), os mesmos amigos, os mesmos objetos etc?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p12" value="1" path="pergunta12" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p12" value="0" path="pergunta12" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Em caso de dificuldade ou fracasso, em vez de desanimar, recomeça tantas vezes quantas for necessário?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p13" value="1" path="pergunta13" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p13" value="0" path="pergunta13" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Comove-se ao ouvir ou ler um fato emocionante quase tanto quanto diante de um acontecimento real?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p14" value="1" path="pergunta14" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p14" value="0" path="pergunta14" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>Demora para se reconciliar (depois de uma desavença, afronta etc)?
                        <label class="fancy-radio">
                            <form:radiobutton name="sim_p15" value="1" path="pergunta15" />
                            <span>
                                <i></i>
                                Sim
                            </span>
                        </label>
                        <label class="fancy-radio">
                            <form:radiobutton name="nao_p15" value="0" path="pergunta15" />
                            <span>
                                <i></i>
                                Não
                            </span>
                        </label>
                    </td>
                </tr>
            </table>

            <button type="submit" class="btn btn-success">Enviar</button>
        </form:form>
            </tbody>
    </div>
</div>





<%--<form action="AlunoForm" method="post">

    Digite Seu nome: <input type="text" name="nome">

</form>--%>
