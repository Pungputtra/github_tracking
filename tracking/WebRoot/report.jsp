<%@ page language="java" pageEncoding="UTF-8"%>

<%@ page import="com.sale.struts.form.StatusForm"%>
<%@ page import = "java.util.*" %>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
  <head>
  
    <title>My JSP 'report.jsp' starting page</title>
      <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
      
      
   		
  <script type="text/javascript" src="js/bootstrap.js"></script>
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
		<link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css"></link>
		
		
		
		
  

  
  <link rel="stylesheet" href="css/bootstrap-datepicker.css" type="text/css"></link>
  <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
  </head>
  
  <body>
  
    
  	
  		<br>
	  	<div class="col-md-9 ">
	  	
	  		<form action="reportpdf.jsp" method="post">
			
				<div class="container">
				
					<div class="row">
					
	  					<div class="col-md-4"><label>Employee Name :</label>
	  						<input type="text" name="empname" property="empname"/>
	  					</div>
						
					</div><br/>
					
					
					<div class="row">
					<div class="input-daterange">
	  					<div class="col-md-2"><label>Start Date :</label>
	  						<input type="text" name="startdate" property="startdate"/>
	  					</div>
	  					
	  					<div class="col-md-2"><label>End Date :</label>
	  						<input type="text" name="enddate" property="enddate"/>
	  					</div>
	  					</div>
	  					
	  					
	  					
	  					<br>
	  					<div class="col-md-4">
							<button type ="submit" class="btn btn-default" value="PRINT" name="print">
							<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
							PRINT</button>
						</div>
						
					</div><br/>
					
					
					
					
					
					
					
				</div>

			</form>
	  		
	  	</div>
	  	
    
  </body>
  <script>
$('.input-daterange').datepicker({
	format: "yyyy-mm-dd",
    todayBtn: "linked",orientation: "bottom auto",
    clearBtn: true
});
  </script>
</html>
