<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for CustomerForm form</title>
	</head>	
	
	
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css"></link>
	<script type="text/javascript" src="js/bootstrap.js"></script>	
	
	
	
	<body>
		<html:form action="/customer">	
			<div class="row">
				<div class="col-md-2 col-md-offset-2">

					<input type="text" class="form-control" property="cusid" placeholder="รหัสลูกค้า"/>

				</div>
			
			<div class="col-md-1"> 
				<button type="submit" class="btn btn-default" value="Search" property="search">Search</button><html:errors property="cusid"/>
			</div>
			</div><br/>
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2">
					<html:text  styleClass="form-control" property="companame" placeholder="บริษัท"/><html:errors property="companame"/>
				</div>
			</div><br/>
			
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2">
					<input type="text" class="form-control" property="cusname" placeholder="ชื่อลูกค้า"/><html:errors property="cusname"/>
				</div>
			</div><br/>
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2">
					<input type="text" class="form-control" property="position" placeholder="ตำแหน่ง"/><html:errors property="position"/>
				</div>
			</div><br/>
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2">
					<input type="text" class="form-control" property="address" placeholder="ที่อยู่"/><html:errors property="address"/>
				</div>
			</div><br/>
			
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2">
					<input type="text" class="form-control" property="tel" placeholder="เบอร์โทร"/><html:errors property="tel"/>
				</div>
			</div><br/>
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2">
					<input type="text" class="form-control" property="phone" placeholder="เบอร์โทรศัพท์"/><html:errors property="phone"/>
				</div>
			</div><br/>
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2">
					<input type="text" class="form-control" property="mail" placeholder="อีเมล์"/><html:errors property="mail"/>
				</div>
			</div><br/>
			
			
			<br>
			<div class="col-md-1"> 
				<button type="submit" class="btn btn-default" value="INSERT" property="submit">INSERT</button>
			</div>
			
			<div class="col-md-1">
				<button type="submit" class="btn btn-default" value="UPDATE" property="update">UPDATE</button>
			</div>
			
			<div class="col-md-1">
				<button type="submit" class="btn btn-default" value="DELETE" property="delete">DELETE</button>
			</div>
				
		</html:form>
	

	
	</body>
</html>

