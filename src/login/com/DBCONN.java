package login.com;

import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBCONN {
 
	// ���ó�˽�е�
	private static final String driver = "com.mysql.jdbc.Driver";// ���ݿ�����
	private static final String url = "jdbc:mysql://localhost:3306/fruitshop";   //"login"��ָ������ݿ����� 3306�Ƕ˿�
	private static final String username = "root";         //  ���ݿ��û���                                 
	private static final String password = "123456"; //  ���ݿ�����
	private static Connection conn = null;                 //  ���Ӷ���
	// ��̬�����������ݿ�����
	static {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
 
	// ����ģʽ�������ݿ����Ӷ���
	public static Connection getConnection() throws Exception {
		if (conn == null) {
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		}
		return conn;
	}
 
	public static void main(String[] args) {
		try {
			Connection conn = DBCONN.getConnection();
			if (conn != null) {
			} else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
