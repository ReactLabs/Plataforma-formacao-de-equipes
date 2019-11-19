<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-headline">
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
                <c:forEach items="${turmas}" varStatus="i" var="turma">
                    <tr>
                        <td><c:out value="${i.count}"/></td>
                        <td><c:out value="${turma.getNome()}"/></td>
                        <c:if test="${turma.isAberta()}">
                            <td>Aberta</td>
                        </c:if>
                        <c:if test="${!turma.isAberta()}">
                            <td>Fechada</td>
                        </c:if>
                        <td><a href="/turma/visualizar/${turma.getIdTurma()}" title="Visualizar" type="button" class="btn btn-info btn-sm"><span class="far fa-file-alt"></span></a>
                            <a href="/turma/excluir/${turma.getIdTurma()}" title="Excluir" type="button" class="btn btn-danger btn-sm"><span class="lnr lnr-trash"></span></a>
                        </td>
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
