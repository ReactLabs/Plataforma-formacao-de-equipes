<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<h3>Edite qual a equipe o aluno deverá participar:</h3>
<form  action="/aluno/edit/equipe/${aluno.id}" method="get">
    <%--<label>Nome Aluno</label> <label><c:out value="${aluno.nome}"</c:out></label>--%>
    <label> Informe qual a equipe:</label><input name="idEquipe" type="number" value="${aluno.equipe}" required="required">
    <button class="btn btn-success" type="submit"> Enviar</button>
</form>