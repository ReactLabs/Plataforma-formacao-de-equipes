<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-headline">
    <div class="panel-heading">
        <h3 class="panel-title">Lista de cadastros pendentes:</h3>
    </div>

    <div class="panel-body">

        <c:if test="${cadastros != null}">
            <table class="table table table-condensed">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Nome</th>
                    <th>Login</th>
                    <th>Observação</th>
                    <th>Ações</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${cadastros}" var="cadastro" varStatus="i">
                    <tr>
                        <td><c:out value="${i.count}"/></td>
                        <td><c:out value="${cadastro.nome}"/></td>
                        <td><c:out value="${cadastro.login}"/></td>
                        <td><c:out value="${cadastro.observacao}"/></td>
                        <td><a href="/dashboard/aceitarUsuario/${cadastro.login}" title="Aceitar" type="button" class="btn btn-success btn-sm"><i class="far fa-check-circle"></i></a>
                            <a href="/dashboard/excluirUsuario/${cadastro.login}" title="Excluir" type="button" class="btn btn-danger btn-sm"><i class="lnr lnr-trash"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${cadastros == null}">
            <p>Sem cadastros pendentes!</p>
        </c:if>


    </div>

</div>
