package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Util {
	private static Connection con;
	public static synchronized Connection getConnection() {
		String st1 = "";
		String str = "jdbc:mysql://localhost:3306/ShoppingDB";
		String user = "root";
		String pass = "root";
		if(con != null) {
			return con;
		}else {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(str, user, pass);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return con;
	}
	public static void closeConnection() {
		if(con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				con = null;
			}
		}
	}
}
