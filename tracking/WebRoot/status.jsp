<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
	<head>
		<title>JSP for StatusForm form</title>
		
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
						<li class="active"><a href="status.jsp">Status</a></li>
					</ul>
  				</div>
  				
  	<!-- End Navs -->
  	
  	
  	<div class="col-md-9 ">
  	
			<html:form action="/status">
			
				<div class="container">
				
					<div class="row">
  					
  						<div class="col-md-2"><label>Status ID :</label>
  							<html:text styleClass="form-control" property="statusid"/>
  						</div>
  						
  						
  						<div class="col-md-4">
  							<br/><button type ="search" class="btn btn-default" value="Search" name="search">
  							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
  							Search</button>
  							
  						</div><br>
  					</div><br/>
  					
  					
  					<div class="row">
  						<div class="col-md-4"><label>Status Name :</label>
  							<html:text styleClass="form-control" property="statusname"/>
  						</div>
  					</div>
  					
  					
  					<br>
  					<div class="col-md-6">
					
						<br/>
						<button type="submit" class="btn btn-default" value="INSERT" name="submit">
						<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
						INSERT</button>
						
						<button type="update" class="btn btn-default" value="UPDATE" name="update">
						<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
						UPDATE</button>
						
						<button type="delete" class="btn btn-default" value="DELETE" name="delete">
						<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
						DELETE</button>
						
					</div>
					
				</div>
				
		</html:form>
	</body>
</html>
