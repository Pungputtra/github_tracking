<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for DetailForm form</title>
	</head>
	<body>
		<html:form action="/detail">
			id : <html:text property="id"/><html:errors property="id"/><br/>
			cusid : <html:text property="cusid"/><html:errors property="cusid"/><br/>
			empid : <html:text property="empid"/><html:errors property="empid"/><br/>
			statusid : <html:text property="statusid"/><html:errors property="statusid"/><br/>
			remark : <html:text property="remark"/><html:errors property="remark"/><br/>
			date : <html:text property="date"/><html:errors property="date"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

