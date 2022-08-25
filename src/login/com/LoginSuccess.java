package login.com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
//  调用数据库，进行查询用户名和密码
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
				System.out.println("数据库连接正常");
			} else {
				System.out.println("数据库连接异常");
			}
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			rs.beforeFirst(); //移至第一条记录之前
			while (rs.next()) {
				String userName = rs.getString("username");
				String passWord = rs.getString("password");
				System.out.println("用户名\t密码");
				System.out.println(username+"\t"+password);
				if (userName.equals(username) && passWord.equals(password)) {
					//   如果用户名和密码都和数据库的一样，就返回true
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
 
