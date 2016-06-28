<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>书籍列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/3.0.0/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
<!-- 	<style type="text/css">
		table, tr, td {
			border:10px solid #aaee77;
			padding:3px;
		}
	</style> -->
  </head>
  
  <body>
    <div id="global" class="container-fluid">
    	<div class="row">
			<div class="col-md-12">	
		    <h1>书籍列表</h1>
			<a href="book_input">添加书本</a>
			<table class="table table-bordered table-striped table-hover ">
				<caption style="text-align: center">条纹表格布局</caption>
				<thead>
					<tr style="background:#999966">
						<th style="text-align: center">目录</th>
						<th style="text-align: center">书名</th>
						<th style="text-align: center">ISBN</th>
						<th style="text-align: center">作者</th>
						<th style="text-align: center"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${books}" var="book" varStatus="status" step="1"> 
		  				<c:if test="${status.count%2 == 0}">
		  					<tr style="background:#eeeeff">
						</c:if>
						<c:if test="${status.count%2 != 0}">
							<tr style="background:#dedeff">
						</c:if>
						<td style="text-align: center">${book.category.name}</td>
						<td style="text-align: center">${book.title}</td>
						<td style="text-align: center">${book.isbn}</td>
						<td style="text-align: center">${book.author}</td>
						<td style="text-align: center"><a href="book_edit/${book.id}">编辑</a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
				<div class="progress">
				  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
				    <span class="sr-only">40% Complete (success)</span>
				  </div>
				</div>
				<div class="progress">
				  <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
				    <span class="sr-only">20% Complete</span>
				  </div>
				</div>
				<div class="progress">
				  <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
				    <span class="sr-only">60% Complete (warning)</span>
				  </div>
				</div>
				<div class="progress">
				  <div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
				    <span class="sr-only">80% Complete (danger)</span>
				  </div>
				</div>
				
				<c:set var="myString" value="<br>Hello world"/>
				${fn:containsIgnoreCase(myString,"hello") }
				<c:out value="${myString}" escapeXml="false"/>
				${fn:escapeXml("<br>Hello world") }<br>
				${fn:length("asdfasdf") }
    		</div>
    	</div>
    </div>
  </body>
</html>
