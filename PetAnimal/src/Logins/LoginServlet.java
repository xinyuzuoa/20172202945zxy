package Logins;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import Connect.DBConnectionManager;
import bean.rolebean;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void wrong1() {// 瀵硅瘽妗嗘彁绀轰俊鎭�
		String msg = "用户名不能为空";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}

	public void wrong2() {
		String msg = "密码不能为空";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}

	public void wrong3() {
		String msg = "密码错误";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
		String password=new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
		String role= new String(request.getParameter("role").getBytes("ISO-8859-1"),"UTF-8");
		if (userName.equals("")) {
			wrong1();
			response.sendRedirect("login.jsp");
		} else if (password.equals("")) {
			wrong2();
			response.sendRedirect("login.jsp");
		} else {
			try {
				if(role.equals("manager")){
		    		try{
		    			Statement stmt=null;
		       			ResultSet rs=null;
		    			Connection Cons;	
		    			DBConnectionManager connects=new DBConnectionManager();
		    			Cons=connects.getConnection();
		    			stmt=Cons.createStatement();
		    			String sql="select * from cusbeauty";			
		    			rs=stmt.executeQuery(sql);
		    		if(rs.next()){
		    			String query2="select * from manager where userPasswd='"+password+"'";
		    			rs=stmt.executeQuery(query2);
		    			if(rs.next()){
		    				response.sendRedirect("managePage.jsp");
		    				String name=rs.getString("userName");
		    				HttpSession session=request.getSession();
		    				session.setAttribute("name",name);
		    				rolebean role1=new rolebean();
		    				role1.setName(name);
		    				session.setAttribute("managerid", userName);
		    			}else{
		    				wrong3();
		    				response.sendRedirect("login.jsp");
		    			}
		    		}
		    	}catch(Exception e){
		    		e.printStackTrace();
		    	}finally{
		    	}
		    		 
		    	}
			else if(role.equals("custom")){
		    		try{
		    			Statement stmt=null;
		       			ResultSet rs=null;
		    			Connection Cons;	
		    			DBConnectionManager connects=new DBConnectionManager();
		    			Cons=connects.getConnection();
		    			stmt=Cons.createStatement();
		    		String query="select * from user where customName='"+userName+"'";
		    		rs=stmt.executeQuery(query);
		    		if(rs.next()){
		    			String query2="select * from user where customPasswd='"+password+"'";
		    			rs=stmt.executeQuery(query2);
		    		if(rs.next()){	
		    				response.sendRedirect("Main.jsp");
		    				HttpSession session=request.getSession();
		    				session.setAttribute("customName", userName);
		    		}else{
		    			wrong3();
		    			response.sendRedirect("login.jsp");
		    		}	
		    		}
		    	}catch(Exception e){
		    		e.printStackTrace();
		    	}finally{
		    	}
		    		 
		    	}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void init() throws ServletException {
	}

}
