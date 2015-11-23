<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.sale.struts.form.ProjectForm"%>
<%@ page import="com.sale.struts.form.CustomerForm"%>
<%@ page import = "java.util.*" %>

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
					<li><a href="index.jsp">Home</a></li>
					<li><a href="customer.jsp">Customer</a></li>
					<li><a href="employee.jsp">Employee</a></li>
					<li class="active"><a href="project.do">Project</a></li>
					<li><a href="detail.do">Detail</a></li>
					<li><a href="status.jsp">Status</a></li>
					<li><a href="report.jsp">Report</a></li>
				</ul>
  			</div>
  			
  	<!-- End Navs -->
	
	
		<div class="col-md-9 ">
		
			<html:form action="/project">
			
				<div class="container">
				
					<div class="row">
					
					<!-- Hidden Proid -->
					
	  					<div class="col-md-2"><label></label>
	  					
	  						<html:hidden styleClass="form-control" property="proid"/>
	  						
	  					</div>
	  					
	  				<!-- Hidden Proid -->
	  				
					</div><br/>
					
					
					<div class="row">
	  				
	  					<div class="col-md-3"><label>Customer Name :</label>
	  					
	  					<!-- List Customer Name -->
	  					
	  						<html:select styleClass="form-control" property="cusid">
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
							
							
						<!-- End List Customer Name -->
	  					
						</div>
						
						
						<div class="col-md-6">
	  						<br/><html:submit styleClass="btn btn-default" value="Get Project" property="search">Search</html:submit>
	  					</div>
						
					</div><br/>
					
					
					<div class="row">
  					
  						<div class="col-md-5"><label>Project Name :</label>
  						
  							<html:text styleClass="form-control" property="proname">
  							

  							</html:text>
						</div>
						
						
						<br>
						<div class="row">
							<div class="col-md-6">
								<button type ="submit" class="btn btn-default" value="INSERT" name="submit">
								<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								INSERT</button>
								
								<button type ="update" class="btn btn-default" value="UPDATE" name="update">
								<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
								UPDATE</button>  
								
								<button type ="delete" class="btn btn-default"  value="DELETE" name="delete">
								<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
								DELETE</button>
							</div>
						</div>
						
					</div><br/>
					
				</div>
				
				
				
				<br>
				<div class="col-md-12">
				
				<!-- Table Show List -->
				
					<table class="table table-bordered">
					
					
					
						<thead>
							<tr class="active">
								<th class="text-center">No</th>
								<th class="text-center">Project ID</th>
								<th class="text-center">Project Name</th>
								<th class="text-center">Customer ID</th>
								<th class="text-center">Customer Name</th>
							</tr>
						</thead>
						
								<% if(request.getAttribute("projectlist") != null)
								{
									List projectlist = (List)request.getAttribute("projectlist");
									Iterator iter = projectlist.iterator();
									
									int i=1;
									
									while(iter.hasNext())
									{
										ProjectForm pjform = (ProjectForm) iter.next();
								%>
								
						<tbody>
							<tr>
							
								<td class="active">
								<input type="radio" name="radio"
									onclick="projectForm.proid.value='<%=pjform.getProid()%>';
											projectForm.cusid.value='<%=pjform.getCusid()%>';
											projectForm.proname.value='<%=pjform.getProname()%>';"/>&nbsp;&nbsp;<%=i++%>
											
								</td>
							
								<td class="active"><%=pjform.getProid()%></td>
								<td class="active"><%=pjform.getProname()%></td>
								<td class="active"><%=pjform.getCusid()%></td>
								<td class="active"><%=pjform.getCusname()%></td>
								
								
								
							</tr>
						</tbody>
						
								<%
									}
									
								}else{
								%>
									
						<tbody>
							<tr>
								<td colspan="12" align="center">not found</td>	
							</tr>
						</tbody>
						
							<%
							}
							%>
							
					</table>
					
				<!-- End Table Show List -->
				
				</div>
							
			</html:form>
					
		</div>
	
	</body>
	
</html>
