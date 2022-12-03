package final_project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn; //�ڹٿ� �����ͺ��̽��� ����
	private PreparedStatement pstmt; //������ ��� �� ����
	private ResultSet rs; //����� �޾ƿ���
	
	//�⺻ ������
	//UserDAO�� ����Ǹ� �ڵ����� �����Ǵ� �κ�
	//�޼ҵ帶�� �ݺ��Ǵ� �ڵ带 �̰��� ������ �ڵ尡 ����ȭ�ȴ�
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
	
	//�α��� ����
		public int login(String cusid, String cuspwd) {
			String sql = "select cuspwd from cus where cusid = ?";
			try {
				pstmt = conn.prepareStatement(sql); //sql�������� ��� ��Ų��
				pstmt.setString(1, cusid); //ù��° '?'�� �Ű������� �޾ƿ� 'userID'�� ����
				rs = pstmt.executeQuery(); //������ ������ ����� rs�� ����
				if(rs.next()) {
					if(rs.getString("cuspwd").equals(cuspwd)) {
						return 1; //�α��� ����
					}else
						return 0; //��й�ȣ Ʋ��
				}
				return -1; //���̵� ����
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -2; //����
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
