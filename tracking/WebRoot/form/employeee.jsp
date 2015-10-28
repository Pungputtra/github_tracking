<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for EmployeeForm form</title>
	</head>
	<body>
		<html:form action="/employee">
			empid : <html:text property="empid"/><html:errors property="empid"/><br/>
			empname : <html:text property="empname"/><html:errors property="empname"/><br/>
			position : <html:text property="position"/><html:errors property="position"/><br/>
			address : <html:text property="address"/><html:errors property="address"/><br/>
			tel : <html:text property="tel"/><html:errors property="tel"/><br/>
			mail : <html:text property="mail"/><html:errors property="mail"/><br/>
			username : <html:text property="username"/><html:errors property="username"/><br/>
			password : <html:text property="password"/><html:errors property="password"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

