<%@ page isELIgnored="false" %>
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
    <title>Online Shop</title>
</head>
<body>
<img  src="${pageContext.request.contextPath}/images/shop.jpg" >
<div style="position:absolute;top:10%;left:38.5%;font-size:50px;">当前登录用户：<%=session.getAttribute("name")%></div>
<div style="position:absolute;top:15%;left:40%;font-size:50px;"> </div>
<div style="position:absolute;top:20%;left:40%;font-size:50px;"> </div>
<div style="position:absolute;top:25%;left:40%;font-size:50px;"> </div>
<div style="position:absolute;top:45%;left:41.9%;font-size:50px;">
    <%
    if (session.getAttribute("name") != null) {
        out.println("<a href='logout.jsp'>注销</a>");
        out.println("<a href='shop.jsp'>请进入商店</a>");
    } else {
        out.println("***");
       out.println("<a href='login.html'>请登录</a>");out.println("***");
    }
%>
</div>
</body>
</html>