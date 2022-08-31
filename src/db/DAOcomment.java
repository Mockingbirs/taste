package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOcomment {

	public static int commentinsert(String cbno,String cmid,String ccomment,String cfavorite) throws NamingException, SQLException  {

		  Connection conn = null;
			  
			  PreparedStatement stmt = null; 
			  
			  int result = 0;
			  
			 String sql = "INSERT INTO comment (cbno,cmid,ccomment,cfavorite) VALUES(?,?,?,?)";
			  //Connection Pool 이용 conn= ConnectionPool.get();
			 conn= ConnectionPool.get();
			 
			  stmt = conn.prepareStatement(sql); 
			  
			  stmt.setString(1, cbno);
			  stmt.setString(2, cmid);
			  stmt.setString(3, ccomment);
			  stmt.setString(4, cfavorite);
			 
			  
			  
			  result = stmt.executeUpdate(); // 결과가 성공1 과 실패 0으로 넘어 온다.
			  
			  return result;
			 
		}
	
	
	public static ArrayList<DTOcomment> commentList(String cbno) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM comment WHERE cbno=?";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		  stmt.setString(1, cbno);
		rs = stmt.executeQuery();
		
		ArrayList<DTOcomment> comments = new ArrayList<DTOcomment>();
		
		while(rs.next()) {
			comments.add(new DTOcomment(rs.getString(1),
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getString(5)));
										
		}
		return comments;
	}
	
	public static int commentout(String cno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "DELETE FROM comment  WHERE cno=?";  
			
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, cno);
		
		
		//결과가 0(실패)과 1(성공)로 넘어온다.
		int result = stmt.executeUpdate();
		
		
		return result;
	}
	
}
