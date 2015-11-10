package com.sale.struts.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.sale.struts.data.DBConnect;

public class tblstatus {

	DBConnect agent = new DBConnect();
	Connection conn = null;
	Statement pStmt = null;
	ResultSet rs = null;
	
	public void insert_to_status(String statusid,
			String statusname)throws Exception{
			
		conn = agent.getConnectMYSql();
		
		String sqlQuery = "insert into status value('"+statusid+"','"+statusname+"')";
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		pStmt.close();
		conn.close();
		
	}
	
	
	public String[] select_from_status(String statusid) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "select statusid, statusname from status where statusid = '"+statusid+"'";
		
		String[] result = new String[2];
		
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		while(rs.next()){
			
			result[0] = rs.getString("statusid");
			result[1] = rs.getString("statusname");
			
		}
		rs.close();
		conn.close();
		pStmt.close();
		return result;
		
	}
	
	
	public void delete_from_status(String statusid) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "delete from status where statusid = '"+statusid+"'";
		
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		conn.close();
		pStmt.close();
		
	}
	
	
	public void update_status(String statusid, String statusname)throws Exception{
			
			conn = agent.getConnectMYSql();
			
			String sqlQuery = "update status set statusname = '"+statusname+"' where statusid = '"+statusid+"'";	
			pStmt = conn.createStatement();
			pStmt.executeUpdate(sqlQuery);
			
			pStmt.close();
			conn.close();
			
	}

}
