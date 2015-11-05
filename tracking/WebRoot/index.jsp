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
		<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	
  </head>
  
  
  <body>
  
			  	<nav class="navbar navbar-info">
			  	<div class="container-fluid">
			    
			    	<div class="navbar-header">
			      		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        		<span class="sr-only">Toggle navigation</span>
			        		<span class="icon-bar"></span>
			        		<span class="icon-bar"></span>
			        		<span class="icon-bar"></span>
			      		</button>
			    <img src="img/CompanyLogo.jpg"width="100px" height="50px"></img>
			    	</div>
			
			      
					<ul class="nav navbar-nav navbar-right">
			        	<li><a href="#">Username</a></li>
			        	<li class="dropdown">
			          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">logout <span class="caret"></span></a>
					<ul class="dropdown-menu">
			            <li><a href="#">login</a></li>
			       </ul>
			       		</li>
			      </ul>
			      <div class="container">
	  			<div class="col-md-6 col-md-offset-1">
	  		
			  		<ul class="nav nav-pills nav-justified">
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
			
			</nav>
			
			
			
			
			
			
			
			
  				
   </body>
</html>
