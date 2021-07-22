package utill;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



public class DatabaseUtil {
	public static Connection getConnection() {
	
		try {
			//String dbURL = "jdbc:mysql://localhost:3306/TUTORIAL?useSSL=false&serverTimezone=UTC";
			String dbURL = "jdbc:mysql://localhost:3306/basicjsp?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";

			String dbID = "root";
			String dbPassword = "1234"; //1234
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			System.out.println("AAAAAAAAAAA");
			e.printStackTrace();
		}
		return null;
	}
	
	
	public static void close(Connection conn) {
		try{if(conn != null){conn.close();} }catch(Exception e) {e.printStackTrace();}
	}
	public static void close(Statement stmt) {
		try{if(stmt != null){stmt.close();} }catch(Exception e) {e.printStackTrace();}
	}
	public static void close(PreparedStatement pstmt) {
		try{if(pstmt != null){pstmt.close();} }catch(Exception e) {e.printStackTrace();}
	}
	public static void close(ResultSet rs) {
		try{if(rs != null){rs.close();} }catch(Exception e) {e.printStackTrace();}
	}
}

