<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ page import="com.sale.struts.data.DBIndex"%>
<%@ page import="com.sale.struts.form.CustomerForm"%>
<%@ page import="com.sale.struts.form.DetailForm"%>
<%@ page import="com.sale.struts.form.ProjectForm"%>

<html>
  <head>
  
    <title>My JSP 'index.jsp' starting page</title>
	
		<link rel="stylesheet" href="css/styles.css" type="text/css"></link>
		
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
		
		<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		
 		
 		<link rel="stylesheet" href="css/jquery.dataTables.min.css" type="text/css"></link>
 		
 		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
 		
   </head>
   
   <body>
   
   		<style>
   		
   			body{background-color : #cfe2f3;}
   			
   		</style>
   		
   		<%
			String sessionUser = null;
			if(session.getAttribute("username") != null)
			sessionUser = session.getAttribute("username").toString();
		%>
   		
   		
   	<!-- Navbar -->
   	
   		<nav class="navbar navbar-inverse navbar-static-top">
   		
   			<div class="container-fluid">
   			
   				<div class="navbar-header">
	   				<a class="navbar-brand" href="index.jsp">Sales Tracking</a>
	   			</div>
	   			
	   			
		   		<ul class="nav navbar-nav">
			        <li class="active"><a href="index.jsp">Home</a></li>
			        <li><a href="customer.jsp">Customer</a></li>
			        <li><a href="employee.jsp">Employee</a></li>
			        <li><a href="project.do">Project</a></li>
			        <li><a href="detail.do">Detail</a></li>
			        <li><a href="status.jsp">Status</a></li>
			        
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
	  			
	  			
	  			<ul class="nav navbar-nav navbar-right">
  				
  					<p class="navbar-text"><span class="glyphicon glyphicon-user"></span>&nbsp;<%=sessionUser%></p>
  					
  					<li><a href="logout.do" class="navbar-link"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a></li>
  					
  				</ul>
  				
  			</div>
  			
		</nav>
		
	<!-- End Navbar -->
	
	
	
		<h3>CUSTOMER</h3>
   		
   		<!-- Table Show List -->
 			<div class="col-md-12">
			
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
							<% ListIterator<?> indexCustomer = null;
								DBIndex dbindex = new DBIndex();
								indexCustomer = dbindex.select_customer().listIterator();
								
								
								while(indexCustomer.hasNext())
								{
									CustomerForm cmform = (CustomerForm) indexCustomer.next();
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
				
			</div>
		<!-- End Table Customer -->
		
		
		
		<h3>DETAIL</h3>
		
		<!-- Table Detail -->
			<div class="col-md-12">
			
				<table id="detailtable" class="table table-bordered display">
				
					<thead>
						<tr class="active">
							<th class="text-center">ID</th>
							<th class="text-center">Customer Name</th>
							<th class="text-center">Project Name</th>
							<th class="text-center">Status Name</th>
							<th class="text-center">Remark</th>
							<th class="text-center">Date</th>
							<th class="text-center">Employee Name</th>
						</tr>
					</thead>
					
					<tbody>
							<% ListIterator<?> indexDetail = null;
								
								indexDetail = dbindex.select_detail().listIterator();
								
								
								while(indexDetail.hasNext())
								{
									DetailForm dtform = (DetailForm) indexDetail.next();
							%>
							
						<tr>
							<td class="active"><%=dtform.getId()%></td>
							<td class="active"><%=dtform.getCusname()%></td>
							<td class="active"><%=dtform.getProname()%></td>
							<td class="active"><%=dtform.getStatusname()%></td>
							<td class="active"><%=dtform.getRemark()%></td>
							<td class="active"><%=dtform.getDate()%></td>
							<td class="active"><%=dtform.getEmpname()%></td>							
						</tr>
						
							<%
								}
							%>
							
					</tbody>
				</table>
				
			</div>
		<!-- End Table Detail -->
		
		
		
		<h3>PROJECT</h3>
		<!-- Table Project -->
			<div class="col-md-12">
			
				<table id="projecttable" class="table table-bordered display">
				
					<thead>
						<tr class="active">
							<th class="text-center">Project ID</th>
							<th class="text-center">Project Name</th>
							<th class="text-center">Company Name</th>
							<th class="text-center">Customer Name</th>
							<th class="text-center">Employee Name</th>
						</tr>
					</thead>
					
					<tbody>
							<% ListIterator<?> indexProject = null;
								
								indexProject = dbindex.select_project().listIterator();
								
								
								while(indexProject.hasNext())
								{
									ProjectForm pjform = (ProjectForm) indexProject.next();
							%>
						
						<tr>
							<td class="active"><%=pjform.getProid()%></td>
							<td class="active"><%=pjform.getProname()%></td>
							<td class="active"><%=pjform.getCompaname_en()%></td>
							<td class="active"><%=pjform.getCusname()%></td>
							<td class="active"><%=pjform.getEmpname()%></td>
						</tr>
						
							<%
								}
							%>
							
						</tbody>
				</table>
				
			</div>
		<!-- End Table Project -->
		
   </body>
   
	 <script type="text/javascript">
	 $(document).ready(function() {
	    $('#customertable').DataTable();
	    $('#detailtable').DataTable(
	    {
        	"order": [[ 5, "desc" ]]
    	}
	    );
	    $('#projecttable').DataTable();
	 } );
	 </script>
 	 
 </html>
 