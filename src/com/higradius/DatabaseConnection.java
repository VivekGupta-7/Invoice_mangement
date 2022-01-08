//package com.higradius;
//import java.sql.*;
//
//
//public class DatabaseConnection {
//
//	public static void main(String[] args) throws Exception 
//	{
//		String url = "jdbc:mysql://localhost:3306/high_radius";
//		String user_name = "root";
//		String pass = "root";
//		String query = "select * from mytable";
//		
//		Class.forName("com.mysql.jdbc.Driver");
//		Connection conn = DriverManager.getConnection(url,user_name,pass);
//		
//		Statement st = conn.createStatement();
//		
//		ResultSet rs = st.executeQuery(query);
//		
//		rs.next();
//		String cust_name = rs.getString("name_customer");
//		System.out.println(cust_name);
//		
//		st.close();
//		conn.close();
//		
//
//	}
//	
//	
//
//}
