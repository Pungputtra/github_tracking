<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
		
		<script type="text/javascript" src="js/bootstrap.js"></script>
	
  </head>
  
  <%@ include file="menu.jsp" %>
  
  <body>
  
  	<br>
  	<div class="container">
  	
	  	<div class="row">
	  		<div class="col-md-6 col-md-offset-1">
	  		
			  	<ul class="nav nav-pills">
			  		<li role="presentation" class="active"><a href="index.jsp">Home</a></li>
			  		<li role="presentation"><a href="customer.jsp">Customer</a></li>
			  		<li role="presentation"><a href="employee.jsp">Employee</a></li>
			  		<li role="presentation"><a href="project.do">Project</a></li>
			  		<li role="presentation"><a href="detail.do">Detail</a></li>
			  		<li role="presentation"><a href="status.jsp">Status</a></li>
				</ul>
			
			</div>
		
		</div>
	
	</div>
		
  </body>
</html>
