package com.human.fit;
import java.sql.*;

public class test {
	public static void main(String[] args) {
		Connection con;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://54.180.60.180:3306/fitness","human","1234");
			System.out.println("good");
			}catch(SQLException ex) {System.out.println("SQLException" + ex);}
		catch (Exception e) {System.out.println("Exception : "+ e);}
	}
}
