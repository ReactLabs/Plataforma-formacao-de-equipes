<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<c:if test="${mensagem != null}">
    <div class="row">
        <h3> ATENÇÃO</h3>
        <div class="alert alert-success" style="margin: 0px 35px 5px 0px !important; padding: 10px !important;">
            <strong>${mensagem}</strong>
        </div>
    </div>
</c:if>

<c:if test='${nome_usuario.equals("Denini")}'>

    <a href="/dashboard/listar" class="btn bg-info" >Pedidos de cadastro</a>

</c:if>

<div class="panel panel-headline">
    <div class="panel-heading">
        <h3 class="panel-title">Bem vindo ao TENT</h3>
        <h4 class="panel-title" style="font-size: 19px;">Teams basEd on humaN aspecTs</h4>
    </div>
    <div class="panel-body">
        Uma ferramenta simples, ágil e rápida para a criação de equipes para sala de aula.<br>
        Utilize os botões ao lado para navegar pela ferramenta.
    </div>
</div>


<div class="panel panel-headline">
    <div class="panel-heading">
        <h3 class="panel-title">Tipos sociais e suas caracteristicas</h3>
    </div>
    <div class="panel-body">
        <table class="table">
            <tr>
                <td>Melancólico</td>
                <td>É introvertido, solitário, suscetível, impressionável, escrupuloso, retraído,<br>hesitante, tímido. Contenta-se com o saber teórico, sem visar-lhe a<br>aplicação prática</td>
            </tr>
            <tr>
                <td >Instável</td>
                <td>Pessoas com elevado número e variedade de disposições. Necessidade de<br>distrações, pouca pontualidade, tendência à ociosidade e à contradição,<br>agressivo, irritável, tem pouco domínio pessoal.</td>
            </tr>
            <tr>
                <td >Amorfo</td>
                <td >Interessa-se pelas alegrias e prazeres sensoriais. É dócil, situa-se no polo<br>oposto do líder, tem falta de iniciativa e entusiasmo, sossegado, indiferente,<br>impassível e equilibrado, gosta dos prazeres da mesa, teimoso.</td>
            </tr>
            <tr>
                <td >Apático</td>
                <td >Pessoa sossegada, indiferente, tranquila, disciplinada e fiel. Não se esperem<br>intensas emoções psíquicas desse tipo, nem decisões repentinas, devido ao<br>grau diminuto de emotividade e atividade, gosta da solidão.</td>
            </tr>
            <tr>
                <td >Social</td>
                <td >Pessoa com aptidões práticas, voltadas para o útil, espírito científico, deixase<br>guiar pela razão, reações rápidas e decididas, sossegado, objetivo, gosta<br>da sociedade, facilmente encontra solução para tudo.</td>
            </tr>
            <tr>
                <td >Fleumático</td>
                <td >Pessoa do dever, da ordem, da medida, ponderação, reflexão, é teórico,<br>sempre ocupado, fiel, frio. Bom observador, moderado e metódico no<br>trabalho, pouco impulso (carência de emotividade).</td>
            </tr>
            <tr>
                <td >Ativo</td>
                <td >Pessoa de ação, afável, fascina, arrasta, é improvisador, não acumula<br>experiência, capacidade de adaptação social, entretém a todos, facilmente<br>entusiasmado.</td>
            </tr>
            <tr>
                <td>Líder</td>
                <td>Pessoa de mando, de ação. Poder e dedicação são-lhe característicos.<br>Grande capacidade de trabalho, boa capacidade de concentração, prático,<br>enérgico. Não se submete com facilidade.</td>
            </tr>
        </table>

    </div>
</div>
