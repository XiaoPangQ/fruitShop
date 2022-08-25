<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="mywebproject.RegisterDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String pwd=request.getParameter("pwd");
String pwd1=request.getParameter("pwd1");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String sex=request.getParameter("sex");
RegisterDao re=new RegisterDao();
int count=re.register(name,pwd,pwd1,email,phone,sex);
if(count==1&&name.length()>=3&&name.length()<=8&&pwd.length()>=6&&pwd.equals(pwd1))
{
	   %>
				<a href="login.jsp" style="text-decoration: none;"><span style="color: red;font-size: 90px;font-family: 900;">注册成功点此登录</span></a>
		<%
}
else if(count==0)
{
	
       %>
		<a href="register.jsp"><font color="green" size="6px">用户名重复或者用户名密码不符合要求点此返回上一级</font></a>
		<%
}
 
 
%>
</body>
</html>