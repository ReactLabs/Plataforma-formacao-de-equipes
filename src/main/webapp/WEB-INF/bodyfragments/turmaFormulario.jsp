<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

    <form:form role="form" action="/turma/form" id="id-form" method="POST" modelAttribute="turma">

        <div class="form-group">
        <label>Nome da nova turma: </label><form:input type="text" required="required" path="nome" />
        </div>

        <div class="form-group">
        <label>Descrição da nova turma: </label><form:input type="text" required="required" path="descricao" />
        </div>

        <div class="form-group">
            <label>Coloque a senha da nova: </label><form:input type="text" required="required" path="senha"/>
        </div>
        </div>
        <button class="btn btn-success" type="submit">Finalizar</button>
    </form:form>





<%--<form action="AlunoForm" method="post">

    Digite Seu nome: <input type="text" name="nome">

</form>--%>
