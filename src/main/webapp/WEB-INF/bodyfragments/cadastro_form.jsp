<%--
ATENCAO
*
*   NAO ESTÁ EM USO
*
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<div class="col-md-6">
    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title">Cadastro de novos professores:</h3>
            <h4 class="panel-collapse"> Faça seu pre-cadastro e logo ativaremos sua conta!</h4>
        </div>
        <div class="panel-body">
            <form:form role="form" action="/cadastro" id="id-form" method="POST" modelAttribute="cadastro">

            <form:input type="text" class="form-control" placeholder="Digite seu login" required="required" path="login" />
            <br>
            <form:input type="text" class="form-control" placeholder="Seu nome" required="required" path="nome" />
            <br>
            <form:input type="password" class="form-control" placeholder="Senha" required="required" path="senha"/>
            <br>
            <button class="btn btn-success" type="submit" >Salvar</button>
        </div>
        </form:form>
    </div>
</div>
</div>