package login.com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
//  �������ݿ⣬���в�ѯ�û���������
public class LoginSuccess{
	public boolean LoginSuccess(String username, String password) throws Exception {
		boolean returnValue = false;
		String sql = "SELECT * FROM user";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
 
		try {
			conn = DBCONN.getConnection();
			if (conn != null) {
				System.out.println("���ݿ���������");
			} else {
				System.out.println("���ݿ������쳣");
			}
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			rs.beforeFirst(); //������һ����¼֮ǰ
			while (rs.next()) {
				String userName = rs.getString("username");
				String passWord = rs.getString("password");
				System.out.println("�û���\t����");
				System.out.println(username+"\t"+password);
				if (userName.equals(username) && passWord.equals(password)) {
					//   ����û��������붼�����ݿ��һ�����ͷ���true
					returnValue = true;
					break;
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return returnValue;
 
	}
}
 
