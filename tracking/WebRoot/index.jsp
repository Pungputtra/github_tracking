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
 		<%@ include file="menu.jsp"%>
			<!-- Manu -->	
			
 			<div class="container">
                    <div class="row">
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
    		</div>
    		<!-- End Manu -->

									<div class="container">
										<div class="row">
                       						<div class="col-md-4 col-md-offset-4">
                       						<h1>Sales Tracking <small>ระบบติดตามการขาย</small></h1>
									
												<a class="btn btn-primary " href="customer.jsp"> Customer <span class="glyphicon glyphicon-user"><br></span></a>
							
												<a class="btn btn-success " href="detail.jsp">Detail <span class="glyphicon glyphicon-user"></span></a>
							
												<a class="btn btn-info " href="project.jsp"> Projicet <span class="glyphicon glyphicon-user"></span></a>
											</div>
										</div>
									</div><br><br>
									
									<!-- Table Show List -->
									<div class="container">
								  				<div class="col-md-6 col-md-offset-3">
													<table class="table table-bordered">
													    <thead>
													        <tr>
													            <th>#</th>
													            
													            <th>Employee</th>
													            <th>Status</th>
													            <th>Projicet</th>
													            <th>Customer</th>
													            <th>Datetime</th>
													            
													            
													        </tr>
													    </thead>
													    <tbody>
													        <tr>
													           <td>1</td>
													            <td>โทรครั้งเเรก</td>
													            <td>nana</td>
													            <td>man</td>
													            <td>nana</td>
													            <td>20/2/58</td>
													        </tr>
													        <tr>
													            <td>2</td>
													            <td>โทรครั้งที่2</td>
													            <td>darune</td>
													            <td>patth</td>
													            <td>nana</td>
													            <td>5/1/58</td>
													        </tr>
													        
													    </tbody>
													</table>
									<!-- Table Show List -->
									
									<!-- Address -->
									<footer>
   
								   		<nav class="navbar navbar-fixed-bottom">
								  			<div class="container">
								  				<div class="col-md-5">
								  			
								  			Smart ICT Co.,Ltd.<br>
											92/375 หมู่ที่ 5 ตำบลบางรักน้อย อำเภอเมืองนนทบุรี จังหวัดนนทบุรี 11000<br>
											Tel: 02-926-1419 Phone: 082-7279850 E-mail: siriporn.s@smartict-th.com<br>
								   
								  				</div>
								  			</div>
										</nav>
		
   									</footer>
									<!--End Address -->
									
									
 </body>
 </html>
 