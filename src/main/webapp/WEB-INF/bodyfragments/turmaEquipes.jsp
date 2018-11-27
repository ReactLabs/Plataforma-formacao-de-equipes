<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<c:out value="${size}"></c:out>
oi
<br>

<c:forEach items="${grupos}" var="equipes">
    <c:forEach items="${equipes}" var="alunos">
        <c:out value="${alunos.nome}"></c:out>
    </c:forEach>
    <br>

</c:forEach>