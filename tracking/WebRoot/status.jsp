<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for StatusForm form</title>
	</head>
	<body>
		<html:form action="/status">
			statusid : <html:text property="statusid"/><html:errors property="statusid"/><br/>
			statusname : <html:text property="statusname"/><html:errors property="statusname"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

