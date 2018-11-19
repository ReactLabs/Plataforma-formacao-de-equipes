<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<h2>Hi All</h2>

<c:if test="${mensagem != null}">
    <div class="row">
        <h3> ATENÇÃO</h3>
        <div class="alert alert-success" style="margin: 0px 35px 5px 0px !important; padding: 10px !important;">
            <strong>${mensagem}</strong>
        </div>
    </div>
</c:if>

<label>A seguir veremos os tipos sociais e suas caracteristicas:</label>
<div>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
        .tg .tg-7btt{font-weight:bold;border-color:inherit;text-align:center;vertical-align:top}
        .tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
    </style>
    <table class="tg">
        <tr>
            <th class="tg-7btt">Melancólico</th>
            <th class="tg-0pky">É introvertido, solitário, suscetível, impressionável, escrupuloso, retraído,<br>hesitante, tímido. Contenta-se com o saber teórico, sem visar-lhe a<br>aplicação prática</th>
        </tr>
        <tr>
            <td class="tg-7btt">Instável</td>
            <td class="tg-0pky">Pessoas com elevado número e variedade de disposições. Necessidade de<br>distrações, pouca pontualidade, tendência à ociosidade e à contradição,<br>agressivo, irritável, tem pouco domínio pessoal.</td>
        </tr>
        <tr>
            <td class="tg-7btt">Amorfo</td>
            <td class="tg-0pky">Interessa-se pelas alegrias e prazeres sensoriais. É dócil, situa-se no polo<br>oposto do líder, tem falta de iniciativa e entusiasmo, sossegado, indiferente,<br>impassível e equilibrado, gosta dos prazeres da mesa, teimoso.</td>
        </tr>
        <tr>
            <td class="tg-7btt">Apático</td>
            <td class="tg-0pky">Pessoa sossegada, indiferente, tranquila, disciplinada e fiel. Não se esperem<br>intensas emoções psíquicas desse tipo, nem decisões repentinas, devido ao<br>grau diminuto de emotividade e atividade, gosta da solidão.</td>
        </tr>
        <tr>
            <td class="tg-7btt">Social</td>
            <td class="tg-0pky">Pessoa com aptidões práticas, voltadas para o útil, espírito científico, deixase<br>guiar pela razão, reações rápidas e decididas, sossegado, objetivo, gosta<br>da sociedade, facilmente encontra solução para tudo.</td>
        </tr>
        <tr>
            <td class="tg-7btt">Fleumático</td>
            <td class="tg-0pky">Pessoa do dever, da ordem, da medida, ponderação, reflexão, é teórico,<br>sempre ocupado, fiel, frio. Bom observador, moderado e metódico no<br>trabalho, pouco impulso (carência de emotividade).</td>
        </tr>
        <tr>
            <td class="tg-7btt">Ativo</td>
            <td class="tg-0pky">Pessoa de ação, afável, fascina, arrasta, é improvisador, não acumula<br>experiência, capacidade de adaptação social, entretém a todos, facilmente<br>entusiasmado.</td>
        </tr>
        <tr>
            <td class="tg-7btt">Líder</td>
            <td class="tg-0pky">Pessoa de mando, de ação. Poder e dedicação são-lhe característicos.<br>Grande capacidade de trabalho, boa capacidade de concentração, prático,<br>enérgico. Não se submete com facilidade.</td>
        </tr>
    </table>

</div>