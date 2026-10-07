package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static Connection con;
	
	private DBConnection() {
		
	}
   
	public static Connection getConnection() {
		if(con==null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamicbankdb","root","root");
			}catch(Exception e) {
				System.out.println(e.toString());
			}
		}
		return con;
	}
}
