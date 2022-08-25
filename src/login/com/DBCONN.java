package login.com;

import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBCONN {
 
	// 设置成私有的
	private static final String driver = "com.mysql.jdbc.Driver";// 数据库驱动
	private static final String url = "jdbc:mysql://localhost:3306/fruitshop";   //"login"是指你的数据库名称 3306是端口
	private static final String username = "root";         //  数据库用户名                                 
	private static final String password = "123456"; //  数据库密码
	private static Connection conn = null;                 //  连接对象
	// 静态代码块加载数据库驱动
	static {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
 
	// 单例模式返回数据库连接对象
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
