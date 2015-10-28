<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for EmployeeForm form</title>
		
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
  		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
  
  		<script type="text/javascript" src="js/bootstrap.js"></script>
			
	</head>
	
	<%@ include file="menu.jsp" %>
  		
	
	<!-- Navs -->	
		
		<br><br>
		<div class="container-fluid">
			
		<div class="row">
  			<div class="col-md-3">
  				<ul class="nav nav-pills nav-stacked">
					<li><a href="#">Home</a></li>
					<li ><a href="customer.jsp">Customer</a></li>
					<li class="active"><a href="employee.jsp">Employee</a></li>
					<li><a href="project.jsp">Project</a></li>
					<li><a href="detail.jsp">Detail</a></li>
				</ul>
  			</div>
  				
  	<!-- End Navs -->
		
			
		<div class="col-md-9 ">
		
		<html:form action="/employee">	
			
			
			<div class="container">
				
				
				<div class="row">
  					
  					<div class="col-md-3"><label>Username :</label>
  						<html:text styleClass="form-control" property="username"/><html:errors property="username"/>
  					</div>
  					
  					<div class="col-md-4">
  						<br/><html:submit styleClass="btn btn-default" value="Search" property="search">Search</html:submit><html:errors property="empid"/>
  					</div>
  					
				</div><br/>
				
				<div class="row">
				<div class="col-md-3"><label>Password :</label>
  						<html:text styleClass="form-control" property="password"/><html:errors property="password"/>
  					</div>
  					</div><br/>
				
				
				<div class="row">
  					
  					<div class="col-md-4"><label>Employee Name :</label>
  						<html:text styleClass="form-control" property="empname"/><html:errors property="empname"/>
  					</div>
  					
  					<div class="col-md-4"><label>Position :</label>
  						<html:text styleClass="form-control" property="position"/><html:errors property="position"/>
  					</div>
				
				</div><br/>
				
				
				<div class="row">
  					
  					<div class="col-md-8"><label>Address :</label>
  						<html:text styleClass="form-control" property="address"/><html:errors property="address"/>
  					</div>
				
				</div><br/>
				
				
				<div class="row">
  					
  					<div class="col-md-4"><label>Tel :</label>
  						<html:text styleClass="form-control" property="tel"/><html:errors property="tel"/>
  					</div>
  					
  					<div class="col-md-4"><label>Mail :</label>
  						<html:text styleClass="form-control" property="mail"/><html:errors property="mail"/>
  					</div>
				
				</div><br/>
				
				
			
				<br>
				<div class="col-md-1 col-md-offset-5"> 
					<html:submit styleClass="btn btn-default" value="INSERT" property="submit">INSERT</html:submit>
				</div>
			
				<div class="col-md-1">
					<html:submit styleClass="btn btn-default"  value="UPDATE" property="update">UPDATE</html:submit>
				</div>
			
				<div class="col-md-1">
					<html:submit styleClass="btn btn-default"  value="DELETE" property="delete">DELETE</html:submit>
				</div>
				
		</html:form>
		
		</div>
		
		</div>
				
		</div>
		
	
	</body>
	
</html>
