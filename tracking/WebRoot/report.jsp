<%@ page language="java" pageEncoding="UTF-8"%>

<%@ page import="com.sale.struts.form.StatusForm"%>
<%@ page import = "java.util.*" %>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
  <head>
    
    
    <title>My JSP 'report.jsp' starting page</title>
    
	
	
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
						
						
						<li><a href="report.jsp">Report</a></li>
						
						<button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						
						
						
						
						
						
						
					</ul>
  				</div>
  				
  	<!-- End Navs -->
  	
  	
  	<div class="col-md-9 ">
  		
  		<html:form action="/report">
		
		
			<div class="container">
			
				<div class="row">
				
  					<div class="col-md-4"><label>Employee Name :</label>
  						<html:text styleClass="form-control" property="empname"/>
  					</div>
  					
  					
					
				</div><br/>
				
				<div class="row">
				
  					
  					
  					<div class="col-md-2"><label>Start Date :</label>
  						<html:text styleClass="form-control" property="startdate"/><html:errors property="startdate"/>
  					</div>
  					
  					<div class="col-md-2"><label>End Date :</label>
  						<html:text styleClass="form-control" property="enddate"/><html:errors property="enddate"/>
  					</div>
					
				</div><br/>
			
			
			</div>
			
			<br>
			<div class="row">
				<div class="col-md-4">
					<button type ="print" class="btn btn-default" value="PRINT" name="print">
					<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
					PRINT</button>
					
					
				</div>
			</div>
			
		</html:form>
  		
  		</div>
    
  </body>
</html>
