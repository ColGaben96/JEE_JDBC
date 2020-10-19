package co.edu.unbosque.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MyDatabase {
	
	private Connection con;
	private ResultSet rs;
	private Statement statement;

	public MyDatabase() {
		/*try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String user = "fdpK9Mq4Lh";
			String pass = "LPZhQYsOeL";
			con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/" + user, user, pass);
			statement = con.createStatement();
			con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/" + user, user, pass);
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Check connection");
		}*/
	}
	
	public String getAllData() {
		var msg = "";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String user = "fdpK9Mq4Lh";
			String pass = "LPZhQYsOeL";
			con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/" + user, user, pass);
			statement = con.createStatement();
			rs = statement.executeQuery("SELECT * FROM datos");
			while(rs.next()) {
				msg += rs.getString(1)+";"+rs.getString(2)+";"+rs.getString(3)+";"+rs.getString(4)+";"+rs.getString(5)+";"+rs.getString(6)+";"+rs.getString(7)+";"+rs.getString(8)+";"+rs.getString(9)+";"+rs.getString(10)+";"+rs.getString(11)+";"+rs.getString(12)+"\n";
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return msg;
	}
}
