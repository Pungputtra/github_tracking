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
     <div class="col-xs-6 col-md-1">
    <a href="#" class="thumbnail">
      <img src="img/Logo Edit.png"width="100px" height="50px"></img>
    
    </a>
  </div>
     
		<ul class="nav nav-pills">
			<li role="presentation" class="active"><a href="#">HOME</a></li>
			<li role="presentation"><a href="#">CUSTOMER</a></li>
			<li role="presentation"><a href="#">EMPLOYEE</a></li>
			<li role="presentation"><a href="#">PRIECT</a></li>
			<li role="presentation"><a href="#">DETAIL</a></li>
			<li role="presentation"><a href="#">STATUS</a></li>
		</ul>
		

  
					
		
		
  </body>
</html>
