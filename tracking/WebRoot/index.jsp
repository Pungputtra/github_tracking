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
	
	<link rel="stylesheet" href="css/styles.css" type="text/css"></link>
	
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
		<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		
		
		
		

		
	
  </head>
  
  
  <body>
  
	  <style>
	  	.navbar
	  	{
	  		margin-bottom: 0px;
	  	}
	  	.container{
			width: 100%;
		}
		
		body{
			background-color : #DCDCDC;
		}
		
	  	</style>
	  	
	  	<nav class="navbar navbar-inverse navbar-static-top">
  			<div class="container">
  				<a class="navbar-brand" href="index.jsp">Sales Tracking</a>
  				<p class="navbar-text navbar-right"><a href="logout.do" class="navbar-link">Logout</a></p>
  			</div>
		</nav>
		
	
				
				<nav class="navbar navbar-default">
				
				<div class="container">
	  			
	  				<div class="col-md-6 col-md-offset-1">
	  		
				  		<ul class="nav nav-pills">
				  			<li role="presentation"><a href="index.jsp">Home</a></li>
				  			<li role="presentation"><a href="customer.jsp">Customer</a></li>
				  			<li role="presentation"><a href="employee.jsp">Employee</a></li>
				  			<li role="presentation"><a href="project.do">Project</a></li>
				  			<li role="presentation"><a href="detail.do">Detail</a></li>
				  			<li role="presentation"><a href="status.jsp">Status</a></li>
						</ul>
			
					</div>
				
				</div>
				
				
				
				
			
	
			
  				
   </body>
   
   
   <footer>
   
   		<nav class="navbar navbar-default navbar-fixed-bottom">
  			<div class="container">
  			
  			Smart ICT Co.,Ltd.<br>
			92/375 หมู่ที่ 5 ตำบลบางรักน้อย อำเภอเมืองนนทบุรี จังหวัดนนทบุรี 11000<br>
			Tel: 02-926-1419 Phone: 082-7279850 E-mail: siriporn.s@smartict-th.com<br>
   
  			</div>
		</nav>
		
   </footer>
   
</html>
