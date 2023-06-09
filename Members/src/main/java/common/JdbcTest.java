package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcTest {
	
	static String driverClass = "oracle.jdbc.OracleDriver";
	static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	static String username = "c##mydb"; // user 이름
	static String password = "mydb";	// 비밀번호
	
	public static void main(String[] args) {
		// DB 연결 객체 생성 선언 - 마지막엔 항상 conn.close() 해야함
		Connection conn = null;
		
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("연결 객체 생성: " + conn);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
