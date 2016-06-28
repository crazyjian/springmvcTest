<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  </head>
  <body>
<%--  	<form action="query1" method="post">
	    <fieldset>
	    <legend>用户信息</legend>
	    <p>
	    	<label for="id">编号：</label><input type="text" id="id" name="id"></input>
	    </p>
	    <p>
	    	<label for="name">姓名：</label><input type="text" id="name" name="name"></input>
	    </p>
	    <input id="submit" type="submit" value="提交"/>
	    <input id="reset" type="reset" value="重置"/>
	    </fieldset>
    </form> --%>
     <div id="global" class="container">
    	<div class="row">
			<div class="col-md-12">	
			    <form:form commandName="userInfo" action="query" method="post" class="form-horizontal">
		    		<legend>查询修改</legend>
			    	<div class="form-group">
	    				 <label for="id" class="col-md-4 control-label">编码：</label>
	    				 <div class="col-md-4">
	    				 <form:input id="id" path="id" class="form-control" placeholder="编码"/>
	    				 </div>
		    		</div>
			    	<div class="form-group">
	    				 <label for="name" class="col-md-4 control-label">名字：</label>
	    				 <div class="col-md-4">
	    				 <form:input id="name" path="name" class="form-control" placeholder="名字"/>
	    				 </div>
		    		</div>
			    	<div class="form-group">
	    				 <label for="time" class="col-md-4 control-label">日期：</label>
	    				 <div class="col-md-4">
	    				 <form:input id="time" path="time" class="form-control" placeholder="日期"/>
	    				 </div>
		    		</div>
			    	<div class="col-md-4 col-md-offset-5">
		    			<input class="btn btn-default" id="submit" type="submit" value="添加"/>
			    		<input class="btn btn-default" id="reset" type="reset" value="重置"/>
					</div>
				    <form:errors path="time" cssClass="error"/>
			    </form:form>
    
    		</div>
    	</div>
    </div>
    
<%--     <form action="user/2" method="post">
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
	</form> --%>
  </body>
</html>
