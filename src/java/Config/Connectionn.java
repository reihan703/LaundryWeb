/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;


import java.sql.*;

public class Connectionn {
	  Connection conn = null;
	
	public static Connection dbConnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clean_laundry","root","");
                        System.out.println("hh");
			return conn;
		} catch (Exception e) {

			System.out.println("test");
			e.printStackTrace();
			return null;
		}
		
	}
}
