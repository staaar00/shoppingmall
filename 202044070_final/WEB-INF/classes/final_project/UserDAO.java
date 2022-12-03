package final_project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn; //자바와 데이터베이스를 연결
	private PreparedStatement pstmt; //쿼리문 대기 및 설정
	private ResultSet rs; //결과값 받아오기
	
	//기본 생성자
	//UserDAO가 실행되면 자동으로 생성되는 부분
	//메소드마다 반복되는 코드를 이곳에 넣으면 코드가 간소화된다
	public UserDAO() {
		try {
			String url = "jdbc:mysql://localhost:3306/jspDB?useSSL=false&serverTimezone=UTC";
			String user = "root";
			String password = "Inha1958";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인 영역
		public int login(String cusid, String cuspwd) {
			String sql = "select cuspwd from cus where cusid = ?";
			try {
				pstmt = conn.prepareStatement(sql); //sql쿼리문을 대기 시킨다
				pstmt.setString(1, cusid); //첫번째 '?'에 매개변수로 받아온 'userID'를 대입
				rs = pstmt.executeQuery(); //쿼리를 실행한 결과를 rs에 저장
				if(rs.next()) {
					if(rs.getString("cuspwd").equals(cuspwd)) {
						return 1; //로그인 성공
					}else
						return 0; //비밀번호 틀림
				}
				return -1; //아이디 없음
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -2; //오류
		}
		
		public int join(Cus cus) {
			String sql="insert into user values(?,?,?)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cus.getCusid());
				pstmt.setString(2, cus.getCuspwd());
				pstmt.setString(3, cus.getCusemail());
				return pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1;
		}
}
