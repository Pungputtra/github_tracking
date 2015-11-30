<%@ page language="java" pageEncoding="UTF-8"%>

<%@ page import="com.sale.struts.form.StatusForm"%>
<%@ page import = "java.util.*" %>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
	<head>
		<title>JSP for StatusForm form</title>
		
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
		
		<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
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
						
						<li class="dropdown">
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
  				
  	<!-- End Navs -->
  	
  	
  	<div class="col-md-9 ">
  	
			<html:form action="/status">
			
				<div class="container">
				
					<div class="row">
					
					
					<!-- Hidden Proid -->
					
	  					<div class="col-md-2"><label></label>
	  					
  							<html:hidden styleClass="form-control" property="statusid"/>
  							
  						</div>
	  					
	  				<!-- Hidden Proid -->
					
  					</div><br/>
  					
  					
  					<div class="row">
  						<div class="col-md-4"><label>Status Name :</label>
  							<html:text styleClass="form-control" property="statusname"/>
  						</div>
  						
  						<br>
  						<button type="showstatus" class="btn btn-default" value="Show Status" name="showstatus">
						<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
						SHOW&nbsp;STATUS</button>
						
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
				
				
				<br><br>
				<div class="col-md-12">
				
				<!-- Table Show List -->
				
					<table class="table table-bordered">
					
						<thead>
							<tr class="active">
								<th class="text-center">No</th>
								<th class="text-center">StatusID</th>
								<th class="text-center">Status Name</th>
							</tr>
						</thead>
						
								<% if(request.getAttribute("statuslist") != null)
								{
									List statuslist = (List)request.getAttribute("statuslist");
									Iterator iter = statuslist.iterator();
									
									int i=1;
									
									while(iter.hasNext())
									{
										StatusForm stform = (StatusForm) iter.next();
								%>
								
						<tbody>
							<tr>
							
								<td class="active">
								<input type="radio" name="radio"
									onclick="statusForm.statusid.value='<%=stform.getStatusid()%>';
											statusForm.statusname.value='<%=stform.getStatusname()%>';"/>&nbsp;&nbsp;<%=i++%>
											
											
											
								</td>
							
								<td class="active"><%=stform.getStatusid()%></td>
								<td class="active"><%=stform.getStatusname()%></td>
																
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
	</body>
</html>
