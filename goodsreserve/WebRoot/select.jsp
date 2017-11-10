<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品列表</title>

  </head>
  
  <body>
    <table border="1">
    	<tr>
    		<td>商品编号</td>
    		<td>商品名称</td>
    		<td>商品价格</td>
    		<td>库存数量</td>
    		<td>订单状态</td>
    		<td>操作</td>
    	</tr>
    	
    	<tr>
    		<td>${goods.id }</td>
    		<td>${goods.goodsName }</td>
    		<td>${goods.price }</td>
    		<td>${goods.counts }</td>
    		<td>${goods.status }</td>
    		<td><a href="/goodsreserve/updata?id=${goods.id }">修改</a></td>
    	</tr>
    </table>
  </body>
</html>
