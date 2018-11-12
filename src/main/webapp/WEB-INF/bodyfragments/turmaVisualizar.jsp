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
        <c:if test="${turma.isAberta()}">
            <p class="panel-subtitle">Aberta</p>
        </c:if>
        <c:if test="${!turma.isAberta()}">
            <p class="panel-subtitle">Fechada</p>
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


