<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<div class="col-md-6">
    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title">Cadastro de turmas</h3>
        </div>
        <div class="panel-body">
            <form:form role="form" action="/turma/form" id="id-form" method="POST" modelAttribute="turma">

                <form:input type="text" class="form-control" placeholder="Nome da nova turma" required="required" path="nome" />
                <br>
                <form:input type="text" class="form-control" placeholder="Descrição da nova turma" required="required" path="descricao" />
                <br>
                <form:input type="text" class="form-control" placeholder="Senha de acesso da nova turma" required="required" path="senha"/>
                <br>
                <button class="btn btn-success" type="submit">Salvar</button>
        </div>
            </form:form>
        </div>
    </div>
</div>


