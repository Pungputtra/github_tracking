<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.sale.struts.form.CustomerForm"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import="com.sale.struts.form.ProjectForm"%>
<%@ page import = "java.util.*" %>
 
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
  					
  					<div class="col-md-2"><label>Customer Name :</label>
  						
  						<html:select styleClass="form-control" property="cusname">	
  							<html:option value=""></html:option>
								<% if(request.getAttribute("customerlist") != null)
								{
									List customerlist = (List)request.getAttribute("customerlist");
									Iterator iter = customerlist.iterator();
										
									while(iter.hasNext())
									{
										CustomerForm cmform = (CustomerForm) iter.next();
								%>
								<html:option value="<%=cmform.getCusid()%>"><%=cmform.getCusname()%></html:option>
								<%
									}
								}%>
						</html:select>
  									
					</div>
					
					
					<div class="col-md-6">
  						<br/><html:submit styleClass="btn btn-default" value="Get Project" property="search">Search</html:submit><html:errors property="cusid"/>
  					</div>
				
				</div><br/>

				
				<div class="row">
  					
  					<div class="col-md-6"><label>Project Name :</label>
  						
  						<html:text styleClass="form-control" property="proname"/>
  					</div>
  					
				</div><br/>
				
				
			
				<br>
				<div class="row">
					<div class="col-md-5 col-md-offset-2">
						<html:submit styleClass="btn btn-default" value="INSERT" property="submit">INSERT</html:submit>
						<html:submit styleClass="btn btn-default" value="UPDATE" property="update">UPDATE</html:submit>
						<html:submit styleClass="btn btn-default" value="DELETE" property="delete">DELETE</html:submit>
					</div>
				</div>
			
		</html:form>
		
		</div>
		
		
				<div class="col-md-12">
					<table class="table table-bordered">
				
						<thead>
							<tr>
								<th class="text-center">Pro ID</th>
								<th class="text-center">Customer Name</th>
								<th class="text-center">Project Name</th>
							</tr>
						</thead>
						
						
						<% if(request.getAttribute("customerlist") != null)
								{
									List customerlist = (List)request.getAttribute("customerlist");
									Iterator iter = customerlist.iterator();
										
									while(iter.hasNext())
									{
										CustomerForm cmform = (CustomerForm) iter.next();
								%>
								
								<tbody>		
									<tr>
										<td><%=cmform.getCusid()%></td>
										<td><%=cmform.getCusname()%></td>
									</tr>
								</tbody>
								
								<html:option value="<%=cmform.getCusid()%>"><%=cmform.getCusname()%></html:option>
								
								<%
									}
								}else{%>
								
						<tbody>	
							<tr>
								<td colspan="12" align="center">not found</td>			
							</tr>	
						</tbody>	
								
							<% 
							}
							%>	
					</table>
								
				</div>
		
	</body>
	
</html>
