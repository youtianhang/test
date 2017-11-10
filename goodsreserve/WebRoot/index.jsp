<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <style type="text/css">
    </style>
  </head>
  
  
  
  <body>
    <form action="selectdistrict" method="get">
    	请选择区域：<select class="quyu" id="quyu" name="quyu">
    					<option value="0">朝阳</option>
    					<option value="1">海淀</option>
    					<option value="2">丰台</option>
    					<option value="3">宣武</option>
    					<option value="4">昌平</option> 					
    				</select>
    				<input type="submit" value="查询">
    </form>
  </body>
</html>
