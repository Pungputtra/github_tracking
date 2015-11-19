<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for ReportForm form</title>
	</head>
	<body>
		<html:form action="/report">
			startdate : <html:text property="startdate"/><html:errors property="startdate"/><br/>
			empname : <html:text property="empname"/><html:errors property="empname"/><br/>
			enddate : <html:text property="enddate"/><html:errors property="enddate"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

