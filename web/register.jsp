<%@ page import="dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: LittleOne
  Date: 2020/5/29
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    img{
        position:absolute;
        height:100%;
        width:100%;
    }
</style>
<head>
    <title>注册界面</title>
</head>
<body>
<img  src="背景.jpg" >
    <%
        String name=request.getParameter("username");
        String pass=request.getParameter("password");
        String pass1=request.getParameter("password1");%>
    <div style="position:absolute;top:40%;left:37%;font-size:80px;">
        <%
        if(pass.equals(pass1)&& UserDao.register(name,pass)){
            out.println("注册成功！");

            out.println("<a href='login.html'>请登录</a>");
        }
        else{
            out.println("注册失败！");
            out.println("<a href='register.html'>重新注册</a>");
        }
    %>
    </div>
</body>
</html>
