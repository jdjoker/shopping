<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Online Shop</title>
</head>
<body style="height:1450px">
<img style="position:absolute;height:1500px;width:1500px;" src="/untitled5/web/images/背景.jpg" >

<div style="position:absolute;top:3.6%;left:31%;font-size:40px;">Online Shop：Woman Suit Shop</div>

<table style="position:absolute;top:15%;left:20%; border-style:solid;" border="1"  width="850" height="900" cellspacing="3" cellpadding="3">
    <tr height="60"><td style="font-size:30px"colspan="5" align="center">女装类：</td></tr>
    <tr style="font-size:23px"align="center" height="40"  bgcolor="lightgrey">
        <td width="150">商品展示</td>
        <td width="100">名称</td>
        <td width="100">价格(元/斤)</td>
        <td width="150">数量</td>
        <td width="100">购买</td>
    </tr>


    <tr  height="60" align="center">
        <form action="dofruitCar.jsp?action=buy&id=0" method="post" name="form1">
            <td> <img  src="/untitled5/web/images/女连衣裙.jpg" height="152" width="200">   </td>
            <td style="font-size:40px">连衣裙</td>
            <td style="font-size:35px">118.0</td>
            <td ><input style="width:130px;height:40px" size="15" type="text" name="aa">
            <td ><input style="font-size:25px;height:50px;width:100px;" type="submit" name="buy"  value="购买"></td>
        </form>
    </tr>


    <tr  height="60" align="center">
        <form action="dofruitCar.jsp?action=buy&id=1" method="post" name="form1">
            <td>  <img  src="/untitled5/web/images/女t恤.jpg" height="152" width="200">  </td>
            <td style="font-size:40px">T恤</td>
            <td style="font-size:35px">59.0</td>
            <td ><input style="width:130px;height:40px" size="15" type="text" name="aa">
            <td ><input style="font-size:25px;height:50px;width:100px;" type="submit" name="buy"  value="购买"></td>
        </form>
    </tr>


    <tr  height="60" align="center">
        <form action="dofruitCar.jsp?action=buy&id=2" method="post" name="form1">
            <td> <img  src="/untitled5/web/images/女裤子.jpg" height="152" width="200">   </td>
            <td style="font-size:40px">裤子</td>
            <td style="font-size:35px">79.0</td>
            <td ><input style="width:130px;height:40px" size="15" type="text" name="aa">
            <td ><input style="font-size:25px;height:50px;width:100px;" type="submit" name="buy"  value="购买"></td>
        </form>
    </tr>


    <tr  height="60" align="center">
        <form action="dofruitCar.jsp?action=buy&id=3" method="post" name="form1">
            <td> <img  src="/untitled5/web/images/女鞋子.jpg" height="152" width="200">   </td>
            <td style="font-size:40px">鞋子</td>
            <td style="font-size:35px">228.0</td>
            <td ><input style="width:130px;height:40px" size="15" type="text" name="aa">
            <td ><input style="font-size:25px;height:50px;width:100px;" type="submit" name="buy"  value="购买"></td>
        </form>
    </tr>

    <div style="position:absolute;top:1080px;left:26%";><a href="showCar.jsp"><input style="height:60px;width:150px;" type="button" value='查看购物车'></a></div>
    <div style="position:absolute;top:1080px;left:58%";><a href="index.jsp"><input style="height:60px;width:150px;" type="button" value='回到登录界面'></a></div>
    <div style="position:absolute;top:1180px;left:20%";><a href="fruitshop.jsp"><input style="height:60px;width:160px;" type="button" value='跳转到水果类商店'></a></div>
    <div style="position:absolute;top:1180px;left:35%";><a href="vegshop.jsp"><input style="height:60px;width:150px;" type="button" value='跳转到蔬菜类商店'></a></div>
    <div style="position:absolute;top:1180px;left:50%";><a href="mansuitshop.jsp"><input style="height:60px;width:150px;" type="button" value='跳转到男装类商店'></a></div>
    <div style="position:absolute;top:1180px;left:65%";><a href="ele shop.jsp"><input style="height:60px;width:150px;" type="button" value='跳转到电器类商店'></a></div>
</table>
</body>
</html>
