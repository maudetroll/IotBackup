package com.baverage.backend.DatabaseConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBConnection {
	
	public  DriverManager db;
	public Connection con;
	
//	private String url = "jdbc:mariadb://localhost:3306/vehicleDatabase";
//	private String user = "root";
//	private String password = "";
	
	
	public void connectToDatabase() throws SQLException, ClassNotFoundException {
//		Class.forName("com.mysql.jdbc.Driver");  
//		con=DriverManager.getConnection(  
//		"jdbc:mysql://localhost:3306/","root","1234"); 
//		
//		String schema= con.getSchema();
//		System.out.println(schema);
	}
	
	public ResultSet getDataFromDatabase(String table) throws SQLException {
		String preparedStatement= "Select * from ?";
		PreparedStatement content = con.prepareStatement(preparedStatement);
		con.setAutoCommit(false);
		content.setString(0, table);
		//Statement stmt= con.prepareStatement(content);
		ResultSet rs = content.executeQuery();
		return rs;
		
		
	}
	//DriverManager.getConnection(url,user,password);
}
