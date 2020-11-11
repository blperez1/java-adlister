<%--
  Created by IntelliJ IDEA.
  User: blossomperez
  Date: 11/10/20
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Log In"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp"/>
        <div class="container">
            <h1>Login</h1>
            <form action="/login.jsp" method="POST">
                <div class="form-group">
                    <label for="username">Email address</label>
                    <input type="text"  name="username" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
</body>
</html>
