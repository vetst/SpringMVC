<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<fmt:setLocale value="${sessionScope.lang}"/>
<fmt:setBundle basename="messages"/>

<html>
<body>
<h1><fmt:message key="label.car"/></h1>
<table border="1">
    <tr>
        <td><b>Марка</b></td>
        <td><b>Модель</b></td>
        <td><b>Цена</b></td>
    </tr>
    <c:forEach var="car" items="${requestScope.cars}">
        <tr>
            <td><c:out value="${car.brand}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.price}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>