package Connect;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connect.DBConnectionManager;

public class DeleteCommentServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public DeleteCommentServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			DBConnectionManager dbc = new DBConnectionManager();
			con = dbc.getConnection();
			stmt = con.createStatement();
			String sql="select * from cusbeauty";
			rs=stmt.executeQuery(sql);
			//response.sendRedirect("http://localhost:8080/PetAnimal/userComment/LookMeComment.jsp");
			response.sendRedirect("http://localhost:8080/beauty/all.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
	public void init() throws ServletException {
	}

}
