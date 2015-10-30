package com.sale.struts.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sale.struts.data.DBConnect;
import com.sale.struts.form.DetailForm;
import com.sale.struts.form.CustomerForm;
import com.sale.struts.form.ProjectForm;

public class tbldetail {

	DBConnect agent = new DBConnect();
	Connection conn = null;
	Statement pStmt = null;
	ResultSet rs = null;
	
	public void insert_to_detail(String cusid,
			String proid,
			String statusid,
			String remark,
			String date,
			String username)throws Exception{
			
		conn = agent.getConnectMYSql();
		
		String sqlQuery = "insert into detail(cusid, proid, statusid, remark, date, username) value('"+cusid+"', '"+proid+"', '"+statusid+"', '"+remark+"', now(), '"+username+"')";

		
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		pStmt.close();
		conn.close();
		
	}
	
	
	public String[] select_from_detail(String id, String cusname) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "select id, cusname from detail where id = '"+id+"' and cusname = '"+cusname+"'";
		String[] result = new String[8];
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		while(rs.next()){
			result[0] = rs.getString("id");
			result[1] = rs.getString("cusid");
			result[2] = rs.getString("cusname");
			result[3] = rs.getString("proid");
			result[4] = rs.getString("statusid");
			result[5] = rs.getString("remark");
			result[6] = rs.getString("date");
			result[7] = rs.getString("username");
			
		}
		rs.close();
		conn.close();
		pStmt.close();
		return result;
		
	}
	
	
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
	
	
	public void delete_from_detail(String id) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "delete from detail where id = '"+id+"'";
		
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		conn.close();
		pStmt.close();	
	}
	
	
	public void update_detail(String cusid, String cusname,
			String proid,
			String statusid,
			String remark,
			String date,
			String username)throws Exception{
		
		conn = agent.getConnectMYSql();
		
		String sqlQuery = "update detail set cusid = '"+cusid+"', cusname = '"+cusname+"', proid = '"+proid+"', statusid = '"+statusid+"', remark = '"+remark+"', date = '"+date+"', username = '"+username+"'";
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		pStmt.close();
		conn.close();
	}
	
	
	
	public List select_customer(String cusid){
		List customerList = new ArrayList();
		
		try {
			
			conn = agent.getConnectMYSql();
			
			String sqlQ = "SELECT * FROM customer ";
			if(!cusid.equals("")){
				sqlQ += "where cusid='"+cusid+"'";
			}
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQ);
			
			while(rs.next()){
								
				customerList.add(new CustomerForm(rs.getString("cusid"), rs.getString("cusname")));
				
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return customerList;
		
	}
	
	

	
}
