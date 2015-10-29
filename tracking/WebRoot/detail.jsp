<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.sale.struts.form.ProjectForm"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import = "java.util.*" %>
 
<html> 
	<head>
		<title>JSP for DetailForm form</title>
		
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
						<li><a href="project.jsp">Project</a></li>
						<li class="active"><a href="detail.jsp">Detail</a></li>
					</ul>
  				</div>
  				
  	<!-- End Navs -->
  		
  		
  		<div class="col-md-9 ">
  		
		<html:form action="/detail">
		
				<div class="container">
				
					<div class="row">
  							
  						<div class="col-md-2"><label>Cusid :</label>
  							<html:text styleClass="form-control" property="cusid"/>
  						</div>
  					
  						<div class="col-md-4">
  							<br/><html:submit styleClass="btn btn-default"  value="Get Project" property="search">Search</html:submit><html:errors property="cusid"/>
  						</div>
				
					</div><br/>
						
						
					<div class="row">
  					
  						<div class="col-md-3"><label>Project :</label>
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
				
					</div><br/>
							
				</div>
					
					
					
				<br>
				<div class="row">
					<div class="col-md-5 col-md-offset-2"> 
						
						<button type="showlist" class="btn btn-default" value="Show List" name="showlist">
						<span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>
						SHOWLIST</button>
						
						<button type="submit" class="btn btn-default" value="INSERT" name="submit">
						<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
						INSERT</button>
						
						<button type="delete" class="btn btn-default" value="DELETE" name="delete">
						<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
						DELETE</button>
						
					</div>
				</div><br>
				
				
				<div class="col-md-10">
					<table class="table table-bordered">
		
						<thead>
							<tr class="info">
								<th class="text-center">id</th>
								<th class="text-center">name</th>
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
								<td colspan="2" align="center">not found</td>			
							</tr>	
						</tbody>				
							
							<% 
							}
							%>
					</table>
				</div>
				
						
		</html:form>
		
		</div>
				
	</body>
	
</html>
