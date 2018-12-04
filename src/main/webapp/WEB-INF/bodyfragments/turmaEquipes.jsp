<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	page contentType="text/html;charset=UTF-8"%>



<c:forEach items="${grupos}" var="equipes" varStatus="cont">
    <div class="col-md-6">
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title">Equipe <%--${cont.count}--%></h3>
            </div>
            <div class="panel-body">
                <table class="table table-condensed">
                    <thead>
                        <th># Equipe</th>
                        <th>Nome</th>
                        <th>Tipo social</th>
                        <th>Editar</th>
                    </thead>
                    <c:forEach items="${equipes}" var="alunos">
                    <tbody>
                        <tr>
                            <td><c:out value="${alunos.equipe}"></c:out></td>
                            <td><c:out value="${alunos.nome}"></c:out></td>
                            <td><c:out value="${alunos.tipoSocial}"></c:out></td>
                            <td><a href="/aluno/editar/equipe/${alunos.id}" title="editar" type="button" class="btn btn-info btn-sm"><span class="far fa-edit"></span></a>
                                <a href="/aluno/excluir/${alunos.id}" title="Excluir" type="button" class="btn btn-danger btn-sm"><span class="lnr lnr-trash"></span></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</c:forEach>
