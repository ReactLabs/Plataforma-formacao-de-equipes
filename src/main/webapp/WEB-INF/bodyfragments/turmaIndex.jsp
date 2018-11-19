<%--
  Created by IntelliJ IDEA.
  User: Brenno
  Date: 14/11/2018
  Time: 01:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel-headline">
    <div class="panel-heading">
        <h3 class="panel-title">Lista de turmas cadastradas</h3>
    </div>

    <div class="panel-body">

        <c:if test="${turmas != null}">
            <table class="table table table-condensed">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Turma</th>
                    <th>Aberta</th>
                    <th>Ações</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${turmas}" var="turma">
                    <tr>
                        <th><c:out value="${turma.getIdTurma()}"/></th>
                        <th><c:out value="${turma.getNome()}"/></th>
                        <th><c:out value="${turma.isAberta()}"/></th>
                        <th><a href="/turma/visualizar/${turma.getIdTurma()}" title="Visualizar" type="button" class="btn btn-info btn-sm"><span class="far fa-file-alt"></span></a>
                            <a href="/turma/excluir/${turma.getIdTurma()}" title="Excluir" type="button" class="btn btn-danger btn-sm"><span class="lnr lnr-trash"></span></a>
                        </th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${turmas == null}">
            <p>Sem turmas cadastradas</p>
        </c:if>


    </div>

</div>
