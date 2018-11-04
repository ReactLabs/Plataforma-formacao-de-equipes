<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>




<form:form role="form" action="/aluno/form" id="id-form" method="POST" modelAttribute="aluno">

    <span> Seu nome:</span><form:input type="text" id="nome" path="nome" />


    <input type="submit">
</form:form>





<%--<form action="AlunoForm" method="post">

    Digite Seu nome: <input type="text" name="nome">

</form>--%>
