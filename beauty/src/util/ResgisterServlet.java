package util;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import Connect.DBConnectionManager;
import bean.rolebean;

public class ResgisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * Constructor of the object.
	 */
	public void wrong1() {
		String msg = "此登录名已被注册";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}

	public void wrong2() {
		String msg = "两次密码不一致";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	public ResgisterServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String customName = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
		String customPasswd = new String(request.getParameter("psw").getBytes("ISO-8859-1"),"UTF-8");
		String pwd2 = new String(request.getParameter("psw2").getBytes("ISO-8859-1"),"UTF-8");
		HttpSession session = request.getSession(true); 
    	session.setAttribute("customName", customName);
    	session.setAttribute("customPasswd", customPasswd);
		PrintWriter out = response.getWriter();
		if (customPasswd.trim().equals(pwd2.trim())) {
			String sql = "insert into user(customName,customPasswd) values(?,?)";
			try {
				Connection conn;
				conn = DBConnection.getConnection();
				PreparedStatement prs = DBConnection.getPrepareStatement(conn, sql);
				prs.setString(1, customName);
				prs.setString(2, customPasswd);
				prs.executeUpdate();
				response.sendRedirect("AddCusInform.jsp");
			} catch (SQLException e) {
				wrong1();
				e.printStackTrace();	
				response.sendRedirect("SignUp.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		} else {
			wrong2();
			response.sendRedirect("SignUp.jsp");
		}

	}


	public void init() throws ServletException {
		// Put your code here
	}

}
