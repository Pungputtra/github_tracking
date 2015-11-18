<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'report.jsp' starting page</title>
    
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
  
  <body>
  
    <%@ include file="menu.jsp"%>
    
    <!-- Navs -->
	
		<br><br>
		<div class="container-fluid">
		
			<div class="row">
  				<div class="col-md-3">
  					<ul class="nav nav-pills nav-stacked">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="customer.jsp">Customer</a></li>
						<li><a href="employee.jsp">Employee</a></li>
						<li><a href="project.do">Project</a></li>
						<li><a href="detail.do">Detail</a></li>
						<li><a href="status.jsp">Status</a></li>
						
						<li>
							
							<div class="btn-group" role="group">
							    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							      Dropdown
							      <span class="caret"></span>
							    </button>
							    <ul class="dropdown-menu">
							      <li><a href="#">Dropdown link</a></li>
							      <li><a href="#">Dropdown link</a></li>
							    </ul>
							  </div>
						</li>
						
						
					</ul>
  				</div>
  				
  	<!-- End Navs -->
    
  </body>
</html>
