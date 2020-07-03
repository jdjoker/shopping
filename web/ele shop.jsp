<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Online Shop</title>
</head>
<body style="height:1600px">
<div style="position:absolute;top:3.6%;left:40%;font-size:40px;">Online Shop：Ele Shop</div>
<%!
    String[] goodlistnames={"电视","电脑","空调","冰箱"};
    float[] goodlistprices={1599.0f,5399.0f,1399.0f,1299.0f};
%>
<table style="position:absolute;top:15%;left:20%; border-style:solid;" border="1"  width="1000" height="900" cellspacing="3" cellpadding="3">
    <tr height="50"><td style="font-size:30px"colspan="5" align="center">电器类：</td></tr>
    <tr style="font-size:23px"align="center" height="50"  bgcolor="lightgrey">
        <td width="200">商品展示</td>
        <td width="100">名称</td>
        <td width="200">价格(元/斤)</td>
        <td width="150">数量</td>
        <td width="100">购买</td>
    </tr>
    <%  if(goodlistnames==null||goodlistnames.length==0){ %>
    <tr height="100"><td colspan="5" align="center">没有商品可显示！</td></tr>
    <%
    }
    else{
        for(int i=0;i<goodlistnames.length;i++){
    %>

    <tr  height="60" align="center">
        <form action="doeleCar.jsp?action=buy&id=<%=i%>" method="post" name="form1">
            <td>    </td>
            <td style="font-size:40px"><%=goodlistnames[i]%></td>
            <td style="font-size:35px"><%=goodlistprices[i]%></td>
            <td ><input style="width:130px;height:30px" size="15" type="text" name="aa">
            <td ><input style="font-size:25px;height:50px;width:100px;" type="submit" name="buy"  value="购买"></td>
        </form>
    </tr>
    <%
            }
        }
    %>

    <div style="position:absolute;top:1100px;left:23%";><a href="showCar.jsp"><input style="height:60px;width:150px;" type="button" value='查看购物车'></a></div>
    <div style="position:absolute;top:1100px;left:43%";><a href="index.jsp"><input style="height:60px;width:150px;" type="button" value='回到登录界面'></a></div>
    <div style="position:absolute;top:1100px;left:60%";><a href="fruitshop.jsp"><input style="height:60px;width:160px;" type="button" value='跳转到水果类商店'></a></div>

</table>
</body>
</html>
