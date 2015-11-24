<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import ="com.sale.struts.data.DBConnect" %>
<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page contentType="application/pdf" %>
<%

	DBConnect dbcon = new DBConnect();
	Connection conn = dbcon.getConnectMYSql();
	String filejrxml = application.getRealPath("tracking_report.jrxml");
	
	
	File reportFile = new File(filejrxml);
	if (!reportFile.exists()){
		System.out.println("File Not found");
	}else{
		System.out.println("File is found");
	}
	
	
	JasperReport jr= JasperCompileManager.compileReport(filejrxml);
	
	Map prm = new HashMap();
	
	//name parameter, parameter
	prm.put("username","natchi");
	
	//jr = file, prm = parameter, conn = connect database
	JasperPrint jasperPrint = JasperFillManager.fillReport(jr, prm, conn);
	
	
	OutputStream outStream = response.getOutputStream();
	JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);

%>