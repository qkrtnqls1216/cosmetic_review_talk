package list;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class listDAO {
	private Connection conn;// connection db에 접근하게 해주는 객체
	private ResultSet rs;
	public listDAO() {
		try {
			String driverName = "com.mysql.cj.jdbc.Driver";
			String dbURL = "jdbc:mysql://localhost:3306/review?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "@qkrtnqls991216";
			Class.forName(driverName);
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//bbsID 게시글 번호 가져오는 함수
	public int getNext() {
		//String SQL = "SELECT bbsID FROM dbo.[BBS] ORDER BY bbsID DESC";
		String SQL = "SELECT listID FROM list ORDER BY listID DESC";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번째 게시물인경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// 데이터베이스 오류
	}

	//글 작성하는 함수
		public int write(String listTITLE,String listCONTENT,String listTYPE) {
			String sql = "INSERT INTO list VALUES(?,?,?,?)";
		//String SQL = "insert into dbo.[BBS](bbsID, bbsTitle, userID, bbsDate, bbsContent, bbsAvailable) values(?,?,?,?,?,?)";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, getNext());
				pstmt.setString(2, listTITLE);
				pstmt.setString(3, listCONTENT);
				pstmt.setString(4, listTYPE);
				pstmt.setInt(5, 1);
				/*rs = pstmt.executeQuery();
				System.out.println(SQL);*/
				return pstmt.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1; // 데이터베이스 오류
		}
}
