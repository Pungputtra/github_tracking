package com.sale.struts.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sale.struts.data.DBConnect;
import com.sale.struts.form.ProjectForm;

public class tblproject {

	DBConnect agent = new DBConnect();
	Connection conn = null;
	Statement pStmt = null;
	ResultSet rs = null;
	
	public List select_project(String cusid){
		List projectlist = new ArrayList();
		
		try {
			
			conn = agent.getConnectMYSql();
			
			String sqlQ = "SELECT project.proid, project.proname FROM project WHERE project.cusid = '"+cusid+"'";
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQ);
			
			while(rs.next()){
				
				String proid=null, proname=null;
				proid = rs.getString("proid");
				proname = rs.getString("proname");
				
				projectlist.add(new ProjectForm(proid, proname));
				
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return projectlist;
		
	}
	
	
	public void insert_to_project(String proname, 
			String cusid, 
			String username)throws Exception{
		
		conn = agent.getConnectMYSql();
		
		String sqlQuery = "insert into project(proname, cusid, username) value('"+proname+"','"+cusid+"','"+username+"')";
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		pStmt.close();
		conn.close();
		
	}
	
	
	public String[] select_from_project(String proid) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "select * from project where proid = '"+proid+"'";
		String[] result = new String[3];
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		while(rs.next()){
			result[0] = rs.getString("proid");
			result[1] = rs.getString("proname");
			result[2] = rs.getString("cusid");
			
		}
		rs.close();
		conn.close();
		pStmt.close();
		return result;	
		
	}
	
	
	public List select_customer(String cusname){
		List customerlist = new ArrayList();
		
		try {
			
			conn = agent.getConnectMYSql();
			
			String sqlQ = "SELECT project.proid, project.proname FROM project WHERE project.cusname = '"+cusname+"'";
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQ);
			
			while(rs.next()){
				
				String proid=null, proname=null;
				proid = rs.getString("proid");
				proname = rs.getString("proname");
				
				customerlist.add(new ProjectForm(proid, proname));
				
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return customerlist;
		
	}
	
	
	
	public void delete_from_project(String proid) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "delete from project where proid = '"+proid+"'";
			
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
			
		conn.close();
		pStmt.close();	
			
	}
		

	public void update_project(String proid, 
		String proname, 
		String cusid)throws Exception{
			
		conn = agent.getConnectMYSql();
			
		String sqlQuery = "update project set proname = '"+proname+"', cusid = '"+cusid+"' where proid = '"+proid+"'";			
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
			
		pStmt.close();
		conn.close();
			
	}		

}
