package tw.member.login;

import java.io.IOException;
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


@WebServlet("/member")
public class member extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sname = request.getParameter("sname");
		String user = request.getParameter("user");
		String passwd = request.getParameter("passwd");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		try {			
			Class.forName("com.mysql.jdbc.Driver");		
		} catch (Exception e) {
			System.out.println(e);
		}	
		Properties prop = new Properties();
		prop.setProperty("user", "root");
		prop.setProperty("password", "root");
		String sql = "INSERT INTO member(sname,user,passwd,tel,email) values(?,?,?,?,?)";
		try (
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/ming"				                       ,prop);
				PreparedStatement pstmt=conn.prepareStatement(sql);			
				)
			{					
				pstmt.setString(1, sname);
				pstmt.setString(2, user);
				pstmt.setString(3, passwd);
				pstmt.setString(4, tel);
				pstmt.setString(5, email);
				pstmt.execute();
			}
			catch (Exception e){
				System.out.println(e);
			}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
