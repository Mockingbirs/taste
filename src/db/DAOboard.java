package db;

import java.sql.*;
import java.util.ArrayList;

import util.*;
import javax.naming.NamingException;



public class DAOboard {
	
	// C create R read U update D delete
	
	//회원가입 (테이블에 데이터 넣기)

	
	public static int boardinsert(String btitle,String brname,String brsort,String brprice,String brsite,String braddr,String brfavorite, String bcontent, String bimage, String bauthor) throws NamingException, SQLException  {

	  Connection conn = null;
		  
		  PreparedStatement stmt = null; 
		  
		  int result = 0;
		  
		 String sql = "INSERT INTO board (btitle,brname,brsort,brprice,brsite,braddr,brfavorite, bcontent, bimage, bauthor) VALUES(?,?,?,?,?,?,?,?,?,?)";
		  //Connection Pool 이용 conn= ConnectionPool.get();
		 conn= ConnectionPool.get();
		 
		  stmt = conn.prepareStatement(sql); 
		  
		  stmt.setString(1, btitle);
		  stmt.setString(2, brname);
		  stmt.setString(3, brsort);
		  stmt.setString(4, brprice);
		  stmt.setString(5, brsite);
		  stmt.setString(6, braddr);
		  stmt.setString(7, brfavorite);
		  stmt.setString(8, bcontent);
		  stmt.setString(9, bimage); 
		  stmt.setString(10, bauthor);
		 
		  
		  
		  result = stmt.executeUpdate(); // 결과가 성공1 과 실패 0으로 넘어 온다.
		  
		  return result;
		 
	}
	
	public static ArrayList<DTOboard> boardList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> boards = new ArrayList<DTOboard>();
		
		while(rs.next()) {
			boards.add(new DTOboard(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6),
										rs.getString(7),
										rs.getString(8),
										rs.getString(9),
										rs.getString(10),
										rs.getString(11),
										rs.getString(12)));
		}
		return boards;
	}
	
	
	public static ArrayList<DTOboard> myboardList(String mid) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE bauthor=?";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, mid);	
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> boards = new ArrayList<DTOboard>();
		
		while(rs.next()) {
			boards.add(new DTOboard(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6),
										rs.getString(7),
										rs.getString(8),
										rs.getString(9),
										rs.getString(10),
										rs.getString(11),
										rs.getString(12)));
		}
		return boards;
	}

	public static ArrayList<DTOboard> boardpriceList(String brprice) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE brprice=?";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, brprice);	
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> boards = new ArrayList<DTOboard>();
		
		while(rs.next()) {
			boards.add(new DTOboard(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6),
										rs.getString(7),
										rs.getString(8),
										rs.getString(9),
										rs.getString(10),
										rs.getString(11),
										rs.getString(12)));
		}
		return boards;
	}
	
	public static ArrayList<DTOboard> boardfavoriteList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE brprice=4 and 5";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> boards = new ArrayList<DTOboard>();
		
		while(rs.next()) {
			boards.add(new DTOboard(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6),
										rs.getString(7),
										rs.getString(8),
										rs.getString(9),
										rs.getString(10),
										rs.getString(11),
										rs.getString(12)));
		}
		return boards;
	}
	
	
	public static ArrayList<DTOboard> boardsiteList(String brsite) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE brsite=?";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, brsite);	
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> boards = new ArrayList<DTOboard>();
		
		while(rs.next()) {
			boards.add(new DTOboard(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6),
										rs.getString(7),
										rs.getString(8),
										rs.getString(9),
										rs.getString(10),
										rs.getString(11),
										rs.getString(12)));
		}
		return boards;
	}
	
	public static ArrayList<DTOboard> boardsortList(String brsort) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE brsort=?";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, brsort);	
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> boards = new ArrayList<DTOboard>();
		
		while(rs.next()) {
			boards.add(new DTOboard(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6),
										rs.getString(7),
										rs.getString(8),
										rs.getString(9),
										rs.getString(10),
										rs.getString(11),
										rs.getString(12)));
		}
		return boards;
	}
	
	public static DTOboard boardDetail(String bauthor) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE bauthor=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, bauthor);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		String bno = rs.getString(1);
		String btitle = rs.getString(2);
		String brname = rs.getString(3);
		String brsort = rs.getString(4);
		String brprice = rs.getString(5);
		String brsite = rs.getString(6);
		String braddr = rs.getString(7);
		String brfavorite = rs.getString(8);
		String bcontent = rs.getString(9);
		String bimage = rs.getString(10);
		 bauthor = rs.getString(11);
		String bdate = rs.getString(12);
		
		
		
		DTOboard board = new DTOboard(bno,btitle,brname,brsort,brprice,brsite,braddr,brfavorite, bcontent, bimage, bauthor, bdate);
		
		return board;
	}
	
	public static DTOboard boardEdit(String bno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE bno=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, bno);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		 bno = rs.getString(1);
		String btitle = rs.getString(2);
		String brname = rs.getString(3);
		String brsort = rs.getString(4);
		String brprice = rs.getString(5);
		String brsite = rs.getString(6);
		String braddr = rs.getString(7);
		String brfavorite = rs.getString(8);
		String bcontent = rs.getString(9);
		String bimage = rs.getString(10);
		String bauthor = rs.getString(11);
		String bdate = rs.getString(12);
		
		
		
		DTOboard board = new DTOboard(bno,btitle,brname,brsort,brprice,brsite,braddr,brfavorite, bcontent, bimage, bauthor, bdate);
		
		return board;
	}
	

	public static int boardupdate(String btitle,String brname,String brsort,String brprice,String brsite,String braddr,String brfavorite, String bcontent, String bimage, String bauthor,String bno) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "UPDATE board SET btitle=?,brname=?,brsort=?,brprice=?,brsite=?,braddr=?,brfavorite=?,bcontent=?, bimage=?,bauthor=? WHERE bno=?";
		
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
		
			  stmt.setString(1, btitle);
			  stmt.setString(2, brname);
			  stmt.setString(3, brsort);
			  stmt.setString(4, brprice);
			  stmt.setString(5, brsite);
			  stmt.setString(6, braddr);
			  stmt.setString(7, brfavorite);
			  stmt.setString(8, bcontent);
			  stmt.setString(9, bimage); 
			  stmt.setString(10, bauthor);
			  stmt.setString(11, bno);
		
		//결과가 0(실패)과 1(성공)로 넘어온다.
		int result = stmt.executeUpdate();
		
		
		return result;
	}
	
	public static int boardout(String bno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "DELETE FROM board  WHERE bno=?";  
			
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, bno);
		
		
		//결과가 0(실패)과 1(성공)로 넘어온다.
		int result = stmt.executeUpdate();
		
		
		return result;
	}
	
	

	
}
