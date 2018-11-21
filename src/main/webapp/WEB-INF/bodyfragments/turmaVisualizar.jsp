<%--
  Created by IntelliJ IDEA.
  User: Brenno
  Date: 10/11/2018
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-headline">
    <div class="panel-heading">
        <h3 class="panel-title">Informações da turma</h3>
        <p class="panel-subtitle"><c:out value="${turma.nome}">Turma sem nome</c:out></p>
        <p class="panel-subtitle"><c:out value="${turma.descricao}"></c:out></p>
        <div class="alert alert-success" style="margin: 0px 35px 5px 0px !important; padding: 10px !important;">
            <strong>Link da os alunos responderem ao questionario: <c:out value="${link}"></c:out></strong><br>
            <strong>Senha da turma: <c:out value="${turma.senha}"></c:out></strong>
        </div>

        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Fechar turma e criar as equipes
        </button>

        <%-- <button type="button" class="btn-danger" href="/turma/fechar/<c:out value="${turma.idTurma}"></c:out>"></button>
--%>

        <c:if test="${turma.isAberta()}">
            <p class="panel-subtitle"><b>Status:</b> Aberta</p>
        </c:if>
        <c:if test="${!turma.isAberta()}">
            <p class="panel-subtitle"><b>Status:</b> Fechada</p>
        </c:if>
    </div>
    <div class="panel-body">

        <c:if test="${alunos != null}">
            <table class="table table table-condensed">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Aluno</th>
                    <th>Tipo social</th>
                    <th>Ações</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${alunos}" var="aluno">
                    <tr>
                        <th><c:out value="${aluno.id}"/></th>
                        <th><c:out value="${aluno.nome}"/></th>
                        <th><c:out value="${aluno.getTipoSocial()}"/></th>
                        <th>Ações</th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${alunos == null}">
            <p>Essa turma não possui alunos cadastrados</p>
        </c:if>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Atenção</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Tem certeza que deseja fechar a turma e iniciar a criação das Equipes?
            </div>
            <form action="/turma/fechar/<c:out value="${turma.idTurma}"></c:out>" method="post">
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Agora não!</button>
                    <button type="submit" class="btn btn-primary">Sim, tenho certeza</button>
                </div>
            </form>
        </div>
    </div>
</div>


