<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import = "java.util.*" %>



<html> 
	<head>
		<title>JSP for CustomerForm form</title>	
		
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
					<li class="active"><a href="customer.jsp">Customer</a></li>
					<li><a href="employee.jsp">Employee</a></li>
					<li><a href="project.jsp">Project</a></li>
					<li><a href="detail.jsp">Detail</a></li>
				</ul>
  			</div>
  				
  	<!-- End Navs -->
  				
  				
  		<div class="col-md-9 ">
  				
  		<html:form action="/customer">	
			
					
			<div class="container">
				
				<div class="row">
				
  					<div class="col-md-2"><label>Customer ID :</label>
  						<html:text styleClass="form-control" property="cusid"/>
  					</div>
  					
  					<div class="col-md-4">
  						<br/><html:submit styleClass="btn btn-default"  value="Search" property="search">Search</html:submit><html:errors property="cusid"/>
  					</div>
				
				</div><br/>
			
			
				<div class="row">
  					
  					<div class="col-md-4"><label>Company Name [Eng] :</label>
  						<html:text styleClass="form-control" property="companame_en"/>
  					</div>
  					
  					<div class="col-md-4"><label>Company Name [Thai] :</label>
  						<html:text styleClass="form-control" property="companame_th"/><html:errors property="companame_th"/>
  					</div>
				
				</div><br/>
				
				
				<div class="row">
  					
  					<div class="col-md-4"><label>Customer Name :</label>
  						<html:text styleClass="form-control" property="cusname"/><html:errors property="cusname"/>
  					</div>
  					
  					<div class="col-md-4"><label>Position :</label>
  						<html:text styleClass="form-control" property="position"/><html:errors property="position"/>
  					</div>
				
				</div><br/>
				
				
				<div class="row">
  					
  					
  					<div class="col-md-8"><label>Email :</label>
  						<html:text styleClass="form-control" property="mail"/><html:errors property="mail"/>
  					</div>
  					
				</div><br/>
				
				
				<div class="row">
  					
  					<div class="col-md-9"><label>Address :</label>
  						<html:text styleClass="form-control" property="address"/><html:errors property="address"/>
  					</div>
				
				</div><br/>
				
				
				<div class="row">
  					
  					<div class="col-md-3"><label>Tel08x :</label>
  						<html:text styleClass="form-control" property="tel08"/><html:errors property="tel08"/>
  					</div>
  					
  					<div class="col-md-3"><label>Tel02x :</label>
  						<html:text styleClass="form-control" property="tel02"/><html:errors property="tel02"/>
  					</div>
				
					<div class="col-md-3"><label>Fax :</label>
  						<html:text styleClass="form-control" property="fax"/><html:errors property="fax"/>
  					</div>			
				
				</div><br/>
				
				
				
						
			</div>
			


			<br>
			<div class="col-md-1 col-md-offset-5"> 
				<button type ="submit" class="btn btn-default" value="INSERT" name="submit">
				<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
				INSERT</button>
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
