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
        <p class="panel-subtitle">Nome da turma: <c:out value="${turma.nome}">Turma sem nome</c:out></p>
        <p class="panel-subtitle"><c:out value="${turma.descricao}"></c:out></p>

        <c:if test="${turma.isAberta()}">
            <p class="panel-subtitle"><b>Status:</b> Aberta</p>
        </c:if>
        <c:if test="${!turma.isAberta()}">
            <p class="panel-subtitle"><b>Status:</b> Fechada</p>
        </c:if>
        <hr>
        <div class="alert alert-success" style="margin: 0px 35px 5px 0px !important; padding: 10px !important;">
            <strong>Link da os alunos responderem ao questionario: <c:out value="${link}"></c:out></strong><br>
            <strong>Senha da turma: <c:out value="${turma.senha}"></c:out></strong>
        </div>
    </div>
    <div class="panel-body">
        <%--<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">Fechar turma e criar as equipes</button>
--%>
        <c:if test="${turma.isAberta()}">
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">Fechar turma e criar as equipes</button>
        </c:if>
        <c:if test="${!turma.isAberta()}">
            <a href="/turma/equipes/${turma.idTurma}" type="button" class="btn btn-primary">Visualizar equipes</a>
        </c:if>

        <hr>
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
                        <td><a href="/aluno/editar/${aluno.id}" title="Editar" type="button" class="btn btn-info btn-sm"><span class="fa fa-edit"></span></a>
                            <a href="/aluno/excluir/${aluno.id}" title="Excluir" type="button" class="btn btn-danger btn-sm"><span class="lnr lnr-trash"></span></a>
                        </td>
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
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/turma/fechar/<c:out value="${turma.idTurma}"></c:out>" method="post" modelAttribute="qnt">

            <div class="modal-body">
                Tem certeza que deseja fechar a turma e iniciar a criação das Equipes?
                <label>Informe a quantidade de grupos</label>
                <input class="form-control" type="number" value="2" min="1" name="quantidadeGrupos" required>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Agora não!</button>
                <button type="submit" class="btn btn-success">Sim, tenho certeza</button>
            </div>

            </form>
        </div>
    </div>
</div>


