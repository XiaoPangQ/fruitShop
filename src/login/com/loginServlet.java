package login.com;




/**
 * �������Ҫ�Ĺ����ǻ�ȡǰ��ҳ���û�������û��������� Ȼ�����LoginSuccess���������û��������������ݿ������ݽ���ƥ��
 * ��������ת���û�����������ȷ��תlogin_success.jsp��������תlogin_failed.jsp
 */
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//  ��¼����
public class loginServlet implements javax.servlet.Servlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws Exception  {
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("userName");// ȡ���û���
		String password = request.getParameter("userPwd");// ȡ������
		LoginSuccess db = new LoginSuccess(); // ������½����
		boolean canLogin = db.LoginSuccess(username, password);// ȡ���û���������
		if (canLogin) {// ���ݵ�½�������תҳ��
			System.out.println("�û�����������ȷ");
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp");
			System.out.println("�û������������");
		}
	}
	public void destroy() {
	}
	public ServletConfig getServletConfig() {
		return null;
	}
	public String getServletInfo() {
		return null;
	}
	public void init(ServletConfig arg0) throws ServletException {
	}
 
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		HttpServletRequest rq = (HttpServletRequest) request;
		HttpServletResponse rs = (HttpServletResponse) response;
		try {
			doPost(rq, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
