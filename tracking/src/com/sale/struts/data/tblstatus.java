package com.sale.struts.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class tblstatus {
	
	DBConnect agent = new DBConnect();
	Connection conn = null;
	Statement pStmt = null;
	ResultSet rs = null;
	
	public void insert_to_status(String statusid, String statusname)throws Exception{
			
		conn = agent.getConnectMYSql();
		
		String sqlQuery = "insert into status(statusid, statusname) value('"+statusid+"', '"+statusname+"')";

		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		pStmt.close();
		conn.close();
		
	}
	
	
	public void delete_from_status(String statusid) throws IOException, Exception{
		conn = agent.getConnectMYSql();
		String sqlQuery = "delete from status where statusid = '"+statusid+"'";
		
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlQuery);
		
		conn.close();
		pStmt.close();	
	}

}
