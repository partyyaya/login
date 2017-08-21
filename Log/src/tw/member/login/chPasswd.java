package tw.member.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/chPasswd")
public class chPasswd extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = (String)request.getAttribute("user");
		String oldPasswd = request.getParameter("oldPasswd");
		String newPasswd = request.getParameter("newPasswd");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		Properties prop = new Properties();
		prop.setProperty("user", "root");
		prop.setProperty("password", "root");
		String sql = "SELECT * FROM member where user=? and passwd=?";
		String upsql = "UPDATE member SET  passwd=? WHERE user=?";
		try {			
			Class.forName("com.mysql.jdbc.Driver");		
		} catch (Exception e) {
			System.out.println(e);
		}		
		try (
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/ming",prop);
				PreparedStatement pstmt=conn.prepareStatement(sql);
				PreparedStatement pstmt2=conn.prepareStatement(upsql);	
				)
			{					
				pstmt.setString(1, user);
				pstmt.setString(2, oldPasswd);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					pstmt2.setString(1, newPasswd);	
					pstmt2.setString(2, user);	
					pstmt.execute();
				}else {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('舊密碼輸入錯誤,請重新輸入');");
					out.println("location='changePassword.jsp';");
					out.println("</script>");
				}
			}
			catch (Exception e){
				System.out.println(e);
			}		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
