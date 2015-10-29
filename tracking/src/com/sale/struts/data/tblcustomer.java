package com.sale.struts.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sale.struts.data.DBConnect;
import com.sale.struts.form.CustomerForm;
import com.sale.struts.form.ProjectForm;

public class tblcustomer {
	DBConnect agent = new DBConnect();
	Connection conn = null;
	Statement pStmt = null;
	ResultSet rs = null;
	
	public void insert_to_customer(String cusid, 
			String companame_en, 
			String companame_th,
			String cusname, 
			String position,
			String mail,
			String address,
			String tel08,
			String tel02,
			String fax)throws Exception{
		
		conn = agent.getConnectMYSql();
		
		String sqlQuery = "insert into customer value('"+cusid+"','"+companame_en+"','"+companame_th+"','"+cusname+"','"+position+"','"+mail+"','"+address+"','"+tel08+"','"+tel02+"','"+fax+"')";
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		pStmt.close();
		conn.close();
		
	}
	
	
	public String[] select_from_customer(String cusid) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "select * from customer where cusid = '"+cusid+"'";
		String[] result = new String[10];
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		while(rs.next()){
			result[0] = rs.getString("cusid");
			result[1] = rs.getString("companame_en");
			result[2] = rs.getString("companame_th");
			result[3] = rs.getString("cusname");
			result[4] = rs.getString("position");
			result[5] = rs.getString("mail");
			result[6] = rs.getString("address");
			result[7] = rs.getString("tel08");
			result[8] = rs.getString("tel02");
			result[9] = rs.getString("fax");
			
		}
		rs.close();
		conn.close();
		pStmt.close();
		return result;	
		
	}
		
		
	public void delete_from_customer(String cusid) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "delete from customer where cusid = '"+cusid+"'";
			
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
			
		conn.close();
		pStmt.close();	
			
	}
		

	public void update_customer(String cusid, 
			String companame_en, 
			String companame_th,
			String cusname, 
			String position,
			String mail,
			String address,
			String tel08,
			String tel02,
			String fax)throws Exception{
			
			conn = agent.getConnectMYSql();
			
			String sqlQuery = "update customer set companame_en = '"+companame_en+"', companame_th = '"+companame_th+"', cusname = '"+cusname+"', position = '"+position+"', mail = '"+mail+"', address = '"+address+"', tel08 = '"+tel08+"', tel02 = '"+tel02+"', fax = '"+fax+"' where cusid = '"+cusid+"'";			
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