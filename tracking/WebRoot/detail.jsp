<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.sale.struts.form.DetailForm"%>
<%@ page import="com.sale.struts.form.CustomerForm"%>
<%@ page import="com.sale.struts.form.ProjectForm"%>
<%@ page import = "java.util.*" %>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>


<html>
	<head>
		<title>JSP for DetailForm form</title>
		
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
		
		<script type="text/javascript" src="js/bootstrap.js"></script>
		
	</head>
	
	<%@ include file="menu.jsp"%>
  	
	<!-- Navs -->
	
		<br><br>
		<div class="container-fluid">
		
			<div class="row">
  				<div class="col-md-3">
  					<ul class="nav nav-pills nav-stacked">
						<li><a href="#">Home</a></li>
						<li><a href="customer.jsp">Customer</a></li>
						<li><a href="employee.jsp">Employee</a></li>
						<li><a href="project.do">Project</a></li>
						<li class="active"><a href="detail.do">Detail</a></li>
					</ul>
  				</div>
  				
  	<!-- End Navs -->
  	
  	
  		<div class="col-md-9 ">
  		
			<html:form action="/detail">
		
				<div class="container">
				
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
  							<br/><html:submit styleClass="btn btn-default"  value="Get Project" property="search">Search</html:submit>
  						</div>
						
					</div><br/>
					
					
					<div class="row">
  					
  						<div class="col-md-3"><label>Project :</label>
  						
  						<!-- List Project -->
  						
  							<html:select styleClass="form-control" property="proid">
								<html:option value="">กรุณาเลือกโปรเจก</html:option>
								<% if(request.getAttribute("projectlist") != null)
								{
									List projectlist = (List)request.getAttribute("projectlist");
									Iterator iter = projectlist.iterator();
										
									while(iter.hasNext())
									{
										ProjectForm pjform = (ProjectForm) iter.next();
								%>
								<html:option value="<%=pjform.getProid()%>"><%=pjform.getProname()%></html:option>
								<%
									}
								}%>
							</html:select>
							
						<!-- End List Project -->
						
						</div>
						
						
  						<div class="col-md-3"><label>Status :</label>
  							<html:select styleClass="form-control" property="status">
  								<html:option value="1">โทรครั้งแรก</html:option>
								<html:option value="2">ส่ง email หรือ Fax</html:option>
								<html:option value="3">โทรตาม ครั้งที่ 2</html:option>
								<html:option value="4">โทรตาม ครั้งที่ 3</html:option>
								<html:option value="5">นัด present</html:option>
  							</html:select>
  						</div>
  						
					</div><br/>
					
					
					<div class="row">
  					
  						<div class="col-md-6"><label>Remark :</label>
  							<html:text styleClass="form-control" property="remark"/>
  						</div>
  						
  						
  						<div class="col-md-6">
						
							<br/>
							<button type="submit" class="btn btn-default" value="INSERT" name="submit">
							<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
							INSERT</button>
							
							<button type="delete" class="btn btn-default" value="DELETE" name="delete">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							DELETE</button>
							
							<button type="showlist" class="btn btn-default" value="Show List" name="showlist">
							<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
							SHOWLIST</button>
							
						</div>
						
					</div><br/>
					
				</div>
				
				
				
				<br>
				<div class="col-md-12">
				
				<!-- Table Show List -->
				
					<table class="table table-bordered">
					
						<thead>
							<tr>
								<th class="text-center">Project ID</th>
								<th class="text-center">Project Name</th>
							</tr>
						</thead>
						
								<% if(request.getAttribute("projectlist") != null)
								{
									List projectlist = (List)request.getAttribute("projectlist");
									Iterator iter = projectlist.iterator();
									
									while(iter.hasNext())
									{
										ProjectForm pjform = (ProjectForm) iter.next();
								%>
								
						<tbody>
							<tr>
								<td><%=pjform.getProid()%></td>
								<td><%=pjform.getProname()%></td>
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
