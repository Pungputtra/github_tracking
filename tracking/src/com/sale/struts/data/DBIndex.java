package com.sale.struts.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import sun.java2d.loops.CustomComponent;

import com.sale.struts.form.CustomerForm;
import com.sale.struts.form.DetailForm;
import com.sale.struts.form.ProjectForm;


public class DBIndex {

	DBConnect agent = new DBConnect();
	Connection conn = null;
	Statement pStmt = null;
	ResultSet rs = null;
	
	public List select_customer(){
	
		List customerList = new ArrayList();
		
		try {
			
			conn = agent.getConnectMYSql();
			
			String sqlQ = "select * from customer";
			
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQ);
			
			while(rs.next()){
			
				customerList.add(new CustomerForm(rs.getString("cusid"), rs.getString("companame_en"), rs.getString("companame_th"), rs.getString("cusname"), rs.getString("position"), rs.getString("mail"), rs.getString("address"), rs.getString("tel08"), rs.getString("tel02"), rs.getString("fax")));
				
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
	
	
	public List select_detail(){
		
		List detailList = new ArrayList();
		
		try {
			
			conn = agent.getConnectMYSql();
			
			String sqlQ = "select * from detail";
			
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQ);
			
			while(rs.next()){
			
				detailList.add(new DetailForm(rs.getString("id"), rs.getString("cusid"), rs.getString("proid"), rs.getString("statusid"), rs.getString("remark"), rs.getString("date"), rs.getString("username")));
				
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return detailList;
		
	}
	
	
	public List select_project(){
	
		List projectList = new ArrayList();
		
		try {
			
			conn = agent.getConnectMYSql();
			
			String sqlQ = "select * from project";
			
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQ);
			
			while(rs.next()){
				
				projectList.add(new ProjectForm(rs.getString("proid"), rs.getString("proname"), rs.getString("cusid"), rs.getString("username")));
				
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return projectList;
		
	}
	
}
