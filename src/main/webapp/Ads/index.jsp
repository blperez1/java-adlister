<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: blossomperez
  Date: 11/11/20
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ads"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp"/>
    <h1>Ad listings</h1>

    <c:forEach var="ads" items="${ads}">
        <div class="ads">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</body>
</html>
