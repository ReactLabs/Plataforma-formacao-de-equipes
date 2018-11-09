<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	page contentType="text/html;charset=UTF-8"%>

<h2>Hi All</h2>
 
This is Home Page

<c:if test="${mensagem != null}">
    <div class="row">
        <h3> ATENÇÃO</h3>
        <div class="alert alert-success" style="margin: 0px 35px 5px 0px !important; padding: 10px !important;">
            <strong>${mensagem}</strong>
        </div>
    </div>
</c:if>