package com.sale.struts.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.sale.struts.data.DBConnect;

public class tblemployee {
	DBConnect agent = new DBConnect();
	Connection conn = null;
	Statement pStmt = null;
	ResultSet rs = null;
	
	public void insert_to_employee(String username,
			String password,
			String empname, 
			String position,
			String address, 
			String tel,
			String mail)throws Exception{
		
		conn = agent.getConnectMYSql();
		
		String sqlQuery = "insert into employee value('"+username+"','"+password+"','"+empname+"','"+position+"','"+address+"','"+tel+"','"+mail+"')";
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		pStmt.close();
		conn.close();
	}
	
	
	public String[] select_from_employee(String username, String password) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "select username, empname, position, address, tel, mail from employee where username = '"+username+"' and password = '"+password+"'";
		
		String[] result = new String[7];
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		while(rs.next()){
			result[0] = rs.getString("username");
			
			result[2] = rs.getString("empname");
			result[3] = rs.getString("position");
			result[4] = rs.getString("address");
			result[5] = rs.getString("tel");
			result[6] = rs.getString("mail");
			
		}
		rs.close();
		conn.close();
		pStmt.close();
		return result;	
	}
	
	
	public void delete_from_employee(String username) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "delete from employee where username = '"+username+"'";
		
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		conn.close();
		pStmt.close();	
	}
	
	
	public void update_employee(String username,
			String password, 
			String empname, 
			String position,
			String address, 
			String tel,
			String mail)throws Exception{
		
		conn = agent.getConnectMYSql();
		
		String sqlQuery = "update employee set password = '"+password+"', empname = '"+empname+"', position = '"+position+"', address = '"+address+"', tel = '"+tel+"', mail = '"+mail+"' where username = '"+username+"'";
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		pStmt.close();
		conn.close();
	}
	
	public boolean employee_login(String username, String password){
		boolean canlogin = false;
		try {
			conn = agent.getConnectMYSql();
			String sqlQuery = "select * from employee where username = '"+username+"' and password ='"+password+"'";
			
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			if(rs.next()){
				canlogin = true;
			}
			rs.close();
			conn.close();
			pStmt.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
				try {
					
					if(rs != null)
						rs.close();
					if(conn != null)
						conn.close();
					if(pStmt != null)
						pStmt.close();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}
		
		
		return canlogin;
	}
}
