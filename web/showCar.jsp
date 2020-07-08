<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<html>
<body>

<img style="position:absolute;height:2500px;width:2500px;" src="/untitled5/web/images/背景.jpg" >
<% 
	//获取存储在session中用来存储用户已购买商品的buylist集合对象
	ArrayList buylist=(ArrayList)session.getAttribute("buylist");
	float total=0; 							//用来存储应付金额
%>
<div style="position:absolute;top:3.6%;left:49%;font-size:50px">购物车</div>

<table style="position:absolute;top:15%;left:25%; border-style:solid;" border="1"  width="850" height="900" cellspacing="3" cellpadding="3">
	<tr height="50"><td style="font-size:35px" colspan="5" align="center">购买的商品如下</td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td width="20%">名称</td>
		<td >价格(元/斤)</td>
		<td >数量</td>
		<td>总价(元)</td>
		<td >移除(-1/次)</td>
	</tr>
	<%	if(buylist==null||buylist.size()==0){ %>
	<tr height="100"><td style="font-size:45px" colspan="5" align="center" >您的购物车为空！</td></tr>
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
		<td><a href="dofruitCar.jsp?action=delete&id=<%=i%>">移除</a></td>
	</tr>
	<%							
			}
		}
	%>
	<tr height="50" align="center"><td style="font-size:40px" colspan="5">应付金额：<%=total%>元</td></tr>
	<tr height="50" align="center">
		<td  colspan="1"><a style="font-size:30px" href="fruitshop.jsp">继续购物</a></td>
		<td  colspan="1"><a style="font-size:30px" href="pay.html">支付</a></td>
		<td  colspan="2"><a style="font-size:30px" href="index.jsp">返回登录界面</a></td>
		<td  colspan="1"><a style="font-size:30px" href="dofruitCar.jsp?action=clear">清空购物车</a></td>

	</tr>				
</table>
</body>
</html>