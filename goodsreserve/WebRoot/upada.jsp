<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改</title>
    
  </head>
  
  <body>
  <form action="updataid" method="get">
    <table>
    	<tr>
    		<td>
    			<tr>
    				<td>商品编号</td>
    				<td> <input type="text" name="id" value="${good.id }"></td>
    			</tr>
    		</td>
    		<td>
    			<tr>
    				<td>商品名称</td>
    				<td> <input type="text" name="goodsName" value="${good.goodsName }"></td>
    			</tr>
    		</td>
    		<td>
    			<tr>
    				<td>商品价格</td>
    				<td> <input type="text" name="price" value="${good.price }"></td>
    			</tr>
    		</td>
    		<td>
    			<tr>
    				<td>库存数量</td>
    				<td> <input type="text" name="counts" value="${good.counts }"></td>
    			</tr>
    		</td>
    		<td>
    			<tr>
    				<td>订单状态</td>
    				<td> <input type="text" name="status" value="${good.status }"></td>
    			</tr>
    		</td>
    		<td style="visibility: hidden;">
    			<tr>  				
    				<td> <input type="text" name="district" value="${good.district }"></td>
    			</tr>
    		</td>
    		<td><input type="submit" value="提交"> <input type="button" value="返回"></td>
    	</tr>
    </table>
    
    </form>
  </body>
</html>
