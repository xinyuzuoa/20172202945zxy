package util;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import Connect.DBConnectionManager;

public class addCusInformServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void wrong1() {
		String msg = "姓名不能为空";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}

	public void wrong2() {
		String msg = "身份证号不能为空";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	public void wrong3() {
		String msg = "手机号不能为空";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	public void wrong4() {
		String msg = "请输入合法身份证";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	public void wrong5() {
		String msg = "请输入有效手机号";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	/**
	 * Constructor of the object.
	 */
	public addCusInformServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();
		//int len1=cusName.length();
	    	String cusName = new String(request.getParameter("cusName").getBytes("ISO-8859-1"),"UTF-8");
	    	String cusTelephone = new String(request.getParameter("cusTelephone").getBytes("ISO-8859-1"),"UTF-8");
	    	String cusAddress = new String(request.getParameter("cusAddress").getBytes("ISO-8859-1"),"UTF-8");
	    	String cusCertain = new String(request.getParameter("cusCertain").getBytes("ISO-8859-1"),"UTF-8");
	    	/*request.getSession().setAttribute("cusName",cusName);
	    	request.getSession().setAttribute("cusTelephone",cusTelephone);
	    	request.getSession().setAttribute("cusAddress",cusAddress);
	    	request.getSession().setAttribute("cusCertain",cusCertain);*/
		if (cusName.equals("")) {
			wrong1();
			response.sendRedirect("AddCusInform.jsp");
		} else if (cusTelephone.equals("")) {
			wrong3();
			response.sendRedirect("AddCusInform.jsp");
		} else if (cusCertain.equals("")) {
			wrong2();
			response.sendRedirect("AddCusInform.jsp");
		}
		int len2=cusTelephone.length();
		int len3=cusCertain.length();
		if(len2!=11){
			wrong5();
			response.sendRedirect("AddCusInform.jsp");
		}
		else if(len3!=18){
			wrong4();
			response.sendRedirect("AddCusInform.jsp");
		}else{
			
			try{
				HttpSession session = request.getSession(true); 
				Statement stmt=null;
				ResultSet rs=null;
				Connection Cons;	
				DBConnectionManager connects=new DBConnectionManager();
				Cons=connects.getConnection();
				stmt=Cons.createStatement();
				String customName = (String)session.getAttribute("customName");
				String customPasswd = (String)session.getAttribute("customPasswd");
				String sql = "insert into custom(customName,customPasswd,cusName,cusTelephone,cusAddress,cusCertain) values ('"+customName+"','"+customPasswd+"','"+cusName+"','"+cusTelephone+"','"+cusAddress+"','"+cusCertain+"')";
				stmt.executeUpdate(sql);
				response.sendRedirect("Main.jsp");
			}catch(Exception e){
				e.printStackTrace();
			}finally{
			}
			
		}
		
		
			
		
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
