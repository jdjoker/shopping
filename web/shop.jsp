<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>基于JSP的简单购物车</title>
  </head>
  <body>
	<%! 
	String[] goodlistnames={"苹果","香蕉","梨","橘子"};
	float[] goodlistprices={2.8f,3.1f,2.5f,2.3f};
	%>
	<table border="1" width="500" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="4" align="center">提供商品如下</td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td>名称</td>
		<td>价格(元/斤)</td>
		<td>数量</td>
		<td>购买</td>
	</tr>
	<%  if(goodlistnames==null||goodlistnames.length==0){ %>
	<tr height="100"><td colspan="4" align="center">没有商品可显示！</td></tr>
	<% 
		} 
		else{
			for(int i=0;i<goodlistnames.length;i++){
	%>
	<tr height="50" align="center">
	<form action="doCar.jsp?action=buy&id=<%=i%>" method="post" name="form1">
		<td><%=goodlistnames[i]%></td>
		<td><%=goodlistprices[i]%></td>
		<td><input width="10" size="5" type="text" name="aa">
		<td><input type="submit" name="buy"  value="购买"></td>
	</form>
	</tr>
	<%
			}
		}
	%>
		<tr height="50">
			<div style="position:absolute;top:10%;left:41%;><td colspan="4"><a href="showCar.jsp">查看购物车</a></td><a href="index.jsp">回到登录界面</a></div>
		</tr>
	</table>
	</body>
</html>
