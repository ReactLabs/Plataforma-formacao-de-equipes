<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

    <form:form role="form" class="form-control" action="/turma/form" id="id-form" method="POST" modelAttribute="turma">


        <label>Nome da nova turma: </label><form:input type="text" required="required" path="nome" />
        <label>Descrição da nova turma: </label><form:input type="text" required="required" path="descricao" />
        <label>Coloque a senha da nova: </label><form:input type="text" required="required" path="senha"/>

        <input type="submit">
    </form:form>





<%--<form action="AlunoForm" method="post">

    Digite Seu nome: <input type="text" name="nome">

</form>--%>
