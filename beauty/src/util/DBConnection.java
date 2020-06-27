package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {

	            private static final  String driver="com.mysql.jdbc.Driver";//鏉╃偞甯存す鍗炲З
	            //鏉╃偞甯撮弫鐗堝祦鎼存挾娈慤RL閸︽澘娼�
	            private static final  String url="jdbc:mysql://127.0.0.1:3306/beautysystem?useUnicode=true&characterEncoding=utf-8";
	            private static final  String  username="root";//閺佺増宓佹惔鎾舵畱閻劍鍩涢崥锟�	            private static final  String password="123456";//閺佺増宓佹惔鎾舵畱鐎靛棛鐖�
	            private static final String password="123456";
	            private static Connection conn=null;
	            //闂堟瑦锟芥禒锝囩垳閸ф绀嬬拹锝呭鏉炰粙鈹嶉崝锟�	            static
	            {
	            	 try
	            	 {
	            		  Class.forName(driver);
	            	 }
	            	catch(Exception ex)
	            	{
	            		  ex.printStackTrace();
	            	}
	            }
	            //閸楁洑绶ュΟ鈥崇础鏉╂柨娲栭弫鐗堝祦鎼存捁绻涢幒銉ヮ嚠鐠烇拷
	            public static Connection getConnection() throws Exception
	            {
	            	if(conn==null)
	            	{
	            		conn=DriverManager.getConnection(url, username, password);
	            		return conn;
	            	}
	            	return conn;
	            }
	            public static PreparedStatement getPrepareStatement(Connection conn,
	        			String sql) {
	        		PreparedStatement pstmt = null;
	        		try {
	        			if (conn != null) {
	        				pstmt = conn.prepareStatement(sql);
	        			}
	        		} catch (SQLException e) {
	        			e.printStackTrace();
	        		}
	        		return pstmt;
	        	}
	            
	            public static void close(PreparedStatement prepareStmt) {
	        		try {
	        			if (prepareStmt != null) {
	        				prepareStmt.close();
	        				prepareStmt = null;
	        			}
	        		} catch (SQLException e) {
	        			e.printStackTrace();
	        		}
	        	}
	       /*     public static void main(String[] args)
	            {
	            	try
	            	{
	            		Connection conn=DBConnection.getConnection();
	            		if(conn!=null)
	            		{
	            			System.out.println("閺佺増宓佹惔鎾圭箾閹恒儲顒滅敮闈╃磼");
	            		}
	            		else
	            		{
	            			System.out.println("閺佺増宓佹惔鎾圭箾閹恒儱绱撶敮闈╃磼");
	            		}
	            	}
	            	catch(Exception ex)
	            	{
	            		ex.printStackTrace();
	            	}
	            }*/
}
