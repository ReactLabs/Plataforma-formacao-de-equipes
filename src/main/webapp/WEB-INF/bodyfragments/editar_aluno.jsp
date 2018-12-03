<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<h3>Edite o aluno:</h3>
<form  action="/aluno/edit/${aluno.id}" method="get">
    <label> Nome do aluno:</label><input name="nomeAluno" type="text" value="${aluno.nome}" required="required">
    <button class="btn btn-success" type="submit"> Enviar</button>
</form>