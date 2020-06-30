<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<% 
	//获取存储在session中用来存储用户已购买商品的buylist集合对象
	ArrayList buylist=(ArrayList)session.getAttribute("buylist");
	float total=0; 							//用来存储应付金额
%>
<table border="1" width="450" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="5" align="center">购买的商品如下</td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td width="25%">名称</td>
		<td>价格(元/斤)</td>
		<td>数量</td>
		<td>总价(元)</td>
		<td>移除(-1/次)</td>
	</tr>
	<%	if(buylist==null||buylist.size()==0){ %>
	<tr height="100"><td colspan="5" align="center">您的购物车为空！</td></tr>
	<% 
		}
		else{
			for(int i=0;i<buylist.size();i++){/*  */
				String S=(String)buylist.get(i);
				String[] a=S.split("#");
				String name=a[0];			//获取商品名称
				float price=Float.parseFloat(a[1]);		//获取商品价格
				int num=Integer.parseInt(a[2]);				//获取购买数量
				//计算当前商品总价，并进行四舍五入
				float money=((int)((price*num+0.05f)*10))/10f;
				total+=money; 							//计算应付金额
	%>
	<tr align="center" height="50">
		<td><%=name%></td>
		<td><%=price%></td>
		<td><%=num%></td>
		<td><%=money%></td>
		<td><a href="doCar2.jsp?action=delete&id=<%=i%>">移除</a></td>
	</tr>
	<%							
			}
		}
	%>
	<tr height="50" align="center"><td colspan="5">应付金额：<%=total%></td></tr>
	<tr height="50" align="center">
		<td colspan="2"><a href="index2.jsp">继续购物</a></td>
		<td colspan="3"><a href="doCar2.jsp?action=clear">清空购物车</a></td>
	</tr>				
</table>