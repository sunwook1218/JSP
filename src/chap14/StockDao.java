package chap14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class StockDao {

	public static Connection con = null;
	public static Statement stmt = null;
	public static ResultSet rs = null;
	public static PreparedStatement pstmt = null;

	// 1. 클래스 로딩
	public static void classLoad() throws ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
	}

	// 2. 연결 생성
	// 2. 1) 접속정보
	public static void getCon() throws SQLException {
		String url = "jdbc:mysql://localhost/test1" + "?serverTimezone=Asia/Seoul";
		String id = "root";
		String pw = "rootpw";
		con = DriverManager.getConnection(url, id, pw);
	}

	// 3. PreparedStatement 생성
	public static void createStatement() throws SQLException {
		pstmt = con.prepareStatement("");
	}

	// 4. 입력
	public static void insertInto(ArrayList row) throws SQLException {
		
	}
	
	public static void usePstmtQuery() {
		
	}

	// 5. 결과 처리
//	public static void non() {
//		while(rs.next())
//
//		{
//			out.print(rs.getString("name"));
//			out.print(" : ");
//			out.print(rs.getString("age"));
//			out.print("<br>");
//		}		
//	}

	// 6. 자원 종료
	public void closeResource() throws SQLException {
		if(rs!=null)
		{
			rs.close();
		}if(stmt!=null)
		{
			stmt.close();
		}if(con!=null)
		{
			con.close();
		}		
	}

}
