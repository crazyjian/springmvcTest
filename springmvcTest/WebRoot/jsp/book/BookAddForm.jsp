<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<style type="text/css">
		fieldset{
			padding:.35em .625em .75em;
			margin:0 2px;
			border:1px solid silver
		}

		legend{
			padding:.5em;
			border:0;
			width:auto
		}
	</style>
  </head>
  
  <body>
    <div id="global" class="container">
    	<div class="row">
			<div class="col-md-12">	
		    	<form:form commandName="book" action="book_save" method="post" class="form-horizontal">
		    		<fieldset>
		    			<legend>添加书本</legend>
		    			<div class="form-group">
		    				<label for="category" class="col-md-4 control-label">科目：</label>
		    				<div class="col-md-4">
		    				<form:select id="category" path="category.id" items="${categories}" itemLabel="name" itemValue="id" class="form-control"/>
		    				</div>
		    			</div>
		    			<div class="form-group">
		    				 <label for="title" class="col-md-4 control-label">书名：</label>
		    				 <div class="col-md-4">
		    				 <form:input id="title" path="title" class="form-control" placeholder="书名"/>
		    				 </div>
		    			</div>
		    			<div class="form-group">
		    				<label for="author" class="col-md-4 control-label">作者：</label>
		    				 <div class="col-md-4">
		    				 <form:input id="author" path="author" class="form-control" placeholder="作者"/>
		    				 </div>
		    			</div>
		    			<div class="form-group">
		    				<label for="isbn" class="col-md-4 control-label">ISBN：</label>
		    				 <div class="col-md-4">
		    				 <form:input id="isbn" path="isbn" class="form-control" placeholder="isbn"/>
		    				 </div>
		    			</div>
		    			<div class="col-md-4 col-md-offset-5">
		    				<input class="btn btn-default" id="submit" type="submit" value="添加"/>
			    			<input class="btn btn-default" id="reset" type="reset" value="重置"/>
						</div>
		    		</fieldset>
		    	</form:form>
    		</div>
    	</div>
    </div>
  </body>
</html>
