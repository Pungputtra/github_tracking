<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for LoginForm form</title>
		
			<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
			<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
	
			<script type="text/javascript" src="js/bootstrap.js"></script>	
		
	</head>
	
	<body>
	
	<p><br/></p>
	
	<div class="container">
	
		<div class="row">
  		
  		<div class="col-md-4"></div>
  		
  			<div class="col-md-4">
  			
  			<div class="panel panel-default">
  			<div class="panel-body">
  		
  				<div class="page-header">
  					<h3>Login</h3>
				</div>
			

  				<html:form action="/login">

					<div class="row">
  							
  						<div class="col-md-12"><label>Username</label>
  							
  							<div class="input-group">
  								<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
  								
  								<html:text styleClass="form-control" property="username"/>
  							</div>	
  								
  						</div>
  
					</div><br/>
						
						
					<div class="row">
  							
  						<div class="col-md-12"><label>Password</label>
  							
  							<div class="input-group">
  								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
  								
  								<input type="password" class="form-control" name="password"/>
  							</div>
  							
  						</div>
  
					</div><br>
						
						
					<div class="row">
  						<div class="col-md-12">
  							<%
  								if(request.getAttribute("alert") != null){
  									String alert =(String) request.getAttribute("alert");
  							%>
  								<p class = "text-danger"><%=alert%></p>
  								
  								
  								<div class="alert alert-danger" role="alert">
  									<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  									<span class="sr-only">Error:</span>
  										Username or Password Incorrect
								</div>

  							<% 
  								}
  							 %>
  						</div>
					</div><br>
  
  
						
					<html:submit styleClass="pull-right btn btn-primary" value="Login" property="login">Login</html:submit>
					<p><br/></p>


				</html:form>
			
			</div>
			</div>
			
  			</div>
  	
		</div>
	
	</div>
	
	</body>

</html>
