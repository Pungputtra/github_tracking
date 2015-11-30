<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>

<html>
  <head>
  
    <title>My JSP 'reportiframe.jsp' starting page</title>
    
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
		
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		
  
  </head>
  
  <body>
  
    <%@ include file="menu.jsp"%>
    
    <!-- Sidebar -->
	
		<br><br>
		<div class="container-fluid">
		
			<div class="row">
  				<div class="col-md-2">
  					<ul class="nav nav-pills nav-stacked">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="customer.jsp">Customer</a></li>
						<li><a href="employee.jsp">Employee</a></li>
						<li><a href="project.do">Project</a></li>
						<li><a href="detail.do">Detail</a></li>
						<li><a href="status.jsp">Status</a></li>
						
						<li class="dropdown active">
							<a class="dropdown-toggle" data-toggle="dropdown" href="reportiframe.jsp">Report
								<span class="caret"></span>
							</a>
							
							<ul class="dropdown-menu">
						    	<li><a href="reportiframe.jsp">report1</a></li>
						    	<li><a href="#">report2</a></li>
						    	<li><a href="#">report3</a></li>
						    </ul>
						</li>
						
					</ul>
  				</div>
  				
  	<!-- End Sidebar -->
  	
  	
	  	<div class="col-md-9 ">
	  	
	  		
			
				<div class="container">
				
					<div class="col-md-4">
							<button type ="submit" class="btn btn-default" value="PRINT" name="print">
							<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
							PRINT</button>
						</div>
					
					
					<iframe src="report.jsp" width="1000" height="500">
					  <p>Your browser does not support iframes.</p>
					</iframe>
					
					
				</div>
				
			
	  		
	  	</div>
	  	
	  		</div>
	  		
	  	</div>
    
  </body>
</html>
