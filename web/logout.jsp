<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: LittleOne
  Date: 2020/5/29
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        List<String> userList = (List<String>) application.getAttribute("onlineUsers");
        String name = (String) session.getAttribute("name");
        userList.remove(name);
        session.invalidate();
        response.sendRedirect("index.jsp");
    %>
</body>
</html>
