<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	page contentType="text/html;charset=UTF-8"%>



<c:forEach items="${grupos}" var="equipes">
    <div class="col-md-6">
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title">Equipe</h3>
            </div>
            <div class="panel-body">
                <table class="table table-condensed">
                    <thead>
                        <th>Nome</th>
                        <th>Tipo social</th>
                    </thead>
                    <c:forEach items="${equipes}" var="alunos">
                    <tbody>
                        <tr>
                            <td><c:out value="${alunos.nome}"></c:out></td>
                            <td><c:out value="${alunos.tipoSocial}"></c:out></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</c:forEach>
