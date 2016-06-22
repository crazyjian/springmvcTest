<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  	<form action="query" method="post">
	    <fieldset>
	    <legend>用户信息</legend>
	    <p>
	    	<label>编号：</label><input type="text" id="id" name="id"></input>
	    </p>
	    <p>
	    	<label>姓名：</label><input type="text" id="name" name="name"></input>
	    </p>
	    <input id="submit" type="submit" value="提交"/>
	    <input id="reset" type="reset" value="重置"/>
	    </fieldset>
    </form>
    
    <form action="user/2" method="post">
    	<input type="hidden" name="_method" value="PUT">
    	<input type="submit" value="put">
	</form>
 
	<form action="user/1" method="post">
   	 	<input type="submit" value="post">
	</form>
 
	<form action="user/3" method="get">
   		<input type="submit" value="get">
	</form>
 
	<form action="user/4" method="post">
    	<input type="hidden" name="_method" value="DELETE">
    	<input type="submit" value="delete">
	</form>
  </body>
</html>
