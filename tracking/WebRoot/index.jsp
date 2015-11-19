<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.sale.struts.form.CustomerForm"%>
<%@page import="com.sale.struts.data.DBIndex"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->	
	
	<link rel="stylesheet" href="css/styles.css" type="text/css"></link>
	
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
		<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
 <link rel="stylesheet" href="css/jquery.dataTables.min.css" type="text/css"></link>
 <script type="text/javascript" src="js/jquery.dataTables.min.js"></script></head>
 <body>
 		<%@ include file="menu.jsp"%>
 		
 		<br><br><br>
 		<div class="row">
		  <div class="col-md-4">
		  <!-- Navs -->
 			<div class="container">
                    <div class="row">
                        <div class="col-md-4 ">
	  						<ul class="nav nav-pills nav-stacked">
					  			<li role="presentation"><a href="index.jsp">Home&nbsp;&nbsp;<span class="glyphicon glyphicon-home"><br></span></a></li>
					  			<li role="presentation"><a href="customer.jsp">Customer&nbsp;&nbsp;<span class="glyphicon glyphicon-user"><br></span></a></li>
					  			<li role="presentation"><a href="employee.jsp">Employee</a></li>
					  			<li role="presentation"><a href="project.do">Project</a></li>
					  			<li role="presentation"><a href="detail.do">Detail</a></li>
					  			<li role="presentation"><a href="status.jsp">Status</a></li>
							</ul>
						</div>
    				</div>
    		</div>
    		<!-- End Navs --></div>
		  <div class="col-md-4">
		  		<div class="container">
					<div class="row">
								<a class="btn btn-primary " href="customer.jsp"style="width:128px;height:128px;"> Customer <span class="glyphicon glyphicon-user"><br></span></a>&nbsp;&nbsp;
								<a class="btn btn-success " href="detail.jsp"style="width:128px;height:128px;">Detail <span class="glyphicon glyphicon-user"><br></span></a>&nbsp;&nbsp;
								<a class="btn btn-info " href="project.jsp"style="width:128px;height:128px;"> Projicet <span class="glyphicon glyphicon-book"><br></span></a>&nbsp;&nbsp;
					</div>
				</div>
		</div><br><br></div>
		</div>
		
 			
 			
 			
 			
 			
 			<div class="col-md-12">
				
				<!-- Table Show List -->
				
					<table id="customertable" class="table table-bordered display">
						
						<thead>
							<tr class="active">
								<th class="text-center">Customer ID</th>
								<th class="text-center">Company Name_en</th>
								<th class="text-center">company Name_th</th>
								<th class="text-center">Customer Name</th>
								<th class="text-center">Position</th>
								<th class="text-center">Mail</th>
								<th class="text-center">Address</th>
								<th class="text-center">Tel08</th>
								<th class="text-center">Tel02</th>
								<th class="text-center">Fax</th>
							</tr>
						</thead>
						<tbody>
								<% ListIterator<?> indexDetail = null;
									DBIndex dbindex = new DBIndex();
									indexDetail = dbindex.select_customer().listIterator();
									
									
									
									
									while(indexDetail.hasNext())
									{
										CustomerForm cmform = (CustomerForm) indexDetail.next();
								%>
								
						
							<tr>
								<td class="active"><%=cmform.getCusid()%></td>
								<td class="active"><%=cmform.getCompaname_en()%></td>
								<td class="active"><%=cmform.getCompaname_th()%></td>
								<td class="active"><%=cmform.getCusname()%></td>
								<td class="active"><%=cmform.getPosition()%></td>
								<td class="active"><%=cmform.getMail()%></td>
								<td class="active"><%=cmform.getAddress()%></td>
								<td class="active"><%=cmform.getTel08()%></td>
								<td class="active"><%=cmform.getTel02()%></td>
								<td class="active"><%=cmform.getFax()%></td>
																
							</tr>
						
						
								<%
									}
								%>
							</tbody>
					</table>
					
					<!-- End Table Show List -->
					
				</div>
									
									
 </body>
 <script type="text/javascript">
 $(document).ready(function() {
    $('#customertable').DataTable();
} );
 </script>
 </html>
 