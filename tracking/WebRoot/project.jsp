<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for ProjectForm form</title>
		
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
					<li><a href="customer.jsp">Customer</a></li>
					<li><a href="employee.jsp">Employee</a></li>
					<li class="active"><a href="project.jsp">Project</a></li>
					<li><a href="detail.jsp">Detail</a></li>
				</ul>
  			</div>
  				
  	<!-- End Navs -->
	
	
	
	<div class="col-md-9 ">
	
	
		<html:form action="/project">
		
		
		<div class="container">
				
				<div class="row">
				
  					<div class="col-md-2"><label></label>
  						
  						<html:hidden styleClass="form-control" property="proid"/>
  					</div>
  					
  					
				
				</div><br/>
				
				
				<div class="row">
  					
  					<div class="col-md-6"><label>Project Name :</label>
  						
  						<html:text styleClass="form-control" property="proname"/>
  					</div>
  					
  					
				
				</div><br/>
				
				
				<div class="row">
  					
  					<div class="col-md-2"><label>Custromer Name :</label>
  						
  						
  						<html:text styleClass="form-control" property="cusname"/>
  					</div>
  					
  					
				
				</div><br/>
		
		
			
				<br>
				<div class="row">
					<div class="col-md-5 col-md-offset-1">
						<html:submit styleClass="btn btn-default"  value="Search" property="search">Search</html:submit>
						<html:submit styleClass="btn btn-default" value="INSERT" property="submit">INSERT</html:submit>
						<html:submit styleClass="btn btn-default"  value="UPDATE" property="update">UPDATE</html:submit>
						<html:submit styleClass="btn btn-default"  value="DELETE" property="delete">DELETE</html:submit>
					</div>
				</div>
			
		</html:form>
		</div>
	</body>
</html>

