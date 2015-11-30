<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import ="com.sale.struts.data.DBConnect" %>
<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page contentType="application/pdf" %>
<%
	
	String empname = "";
	if(request.getParameter("empname") != null){
		empname = request.getParameter("empname");
	}
	
	String startdate = request.getParameter("startdate");
	String enddate = request.getParameter("enddate");
	
	String sqlQuery = "SELECT "+
		"detail.id, "+
		"customer.companame_en, "+
		"customer.companame_th, "+
		"customer.cusname, "+
		"customer.`position`, "+
		"customer.mail, "+
		"customer.address, "+
		"customer.tel08, "+
		"customer.tel02, "+
		"customer.fax, "+
		"project.proid, "+
		"project.proname, "+
		"status.statusid, "+
		"status.statusname, "+
		"DATE_FORMAT(detail.date,'%m-%d-%Y %h:%i %p'), "+
		"employee.username, "+
		"employee.empname "+
		"FROM "+
		"customer "+
		"Inner Join detail ON customer.cusid = detail.cusid "+
		"Inner Join project ON project.proid = detail.proid "+
		"Inner Join status ON status.statusid = detail.statusid "+
		"Inner Join employee ON employee.username = detail.username "+
		
		"where ";
		
		if(!empname.equals("")){
		sqlQuery +="employee.empname like '%"+empname+"%' and ";
		}
		if(!startdate.equals("") || !enddate.equals("")){
		sqlQuery +="detail.`date` BETWEEN '"+startdate+"' and '"+enddate+"' and ";
		}
		
		sqlQuery +="detail.id <> '' ";
		
		sqlQuery +="ORDER BY project.proid ";
	
	if(!empname.equals("")){
		System.out.println("abc");
	}
	if(!startdate.equals("")){
		System.out.println("bbb");
	}
	if(!enddate.equals("")){
		System.out.println("ccc");
	}
	
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
	prm.put("prm1",sqlQuery);
	
	//jr = file, prm = parameter, conn = connect database
	JasperPrint jasperPrint = JasperFillManager.fillReport(jr, prm, conn);
	
	
	OutputStream outStream = response.getOutputStream();
	JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);

%>