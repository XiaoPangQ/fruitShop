package mywebproject;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
 
 
public class RegisterDao {
	ArrayList<String> array=new ArrayList<>();
	public int register(String name,String pwd,String pwd1,String email,String phone,String sex) throws SQLException
	{
		        ResultSet rs=null;
				Connection conn=null;
				Statement st=null;
				Statement st1=null;
				int count=0;
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String url="jdbc:mysql://localhost:3306/fruitshop";
					String user="root";
					String password="123456";
					conn=DriverManager.getConnection(url, user, password);
					String sql1="select username from user";
					st=conn.createStatement();
					st1=conn.createStatement();
					rs=st1.executeQuery(sql1);
					while(rs.next())
					{
						String sname=rs.getString("username");
						array.add(sname);
					}
					if(name.length()>=3&&name.length()<=8&&pwd.length()>=6&&pwd.equals(pwd1)&&same(name,array))
					{
						String sql="insert into user(username,password,email,phone,sex) values('"+name+"','"+pwd+"','"+email+"','"+phone+"','"+sex+"')";
						count=st.executeUpdate(sql);
					}
					
					
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally
				{
					if(rs!=null)
					{
						rs.close();
					}
					if(st1!=null)
					{
						st.close();
					}
					if(st!=null)
					{
						st.close();
					}
					if(conn!=null)
					{
						conn.close();
					}
					
				}
				
				return count;
	}
	public boolean same(String name,ArrayList<String> array)
	{
		
		for(String s:array)
		{
			if(name.equals(s))
			{
				return false;
			}
		}
		return true;
	}
}