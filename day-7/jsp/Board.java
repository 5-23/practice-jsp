package jsp;

import java.sql.*;
import java.util.ArrayList;


public class Board{
	private Connection conn;
	private PreparedStatement st;
	private ResultSet rs;
	private UserVO uv = new UserVO();

	public Board(){
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp" , "root" , "mysql");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void pushBoard(String _writer , String _title , String _content) {
		String sql = "insert into board(writer , title , content) values (? , ? , ?)";
		
		try{
			if (!uv.checkUser(_writer)) {return;}
			
			st = conn.prepareStatement(sql);
			
			st.setString(1, _writer);
			st.setString(2, _title);
			st.setString(3, _content);
			
			st.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{
				conn.close();
				st.close();
				rs.close();
			}catch(Exception e) {}
		}
	}
	
	public BoardInfo getbord(String _id){
		String sql = "select * form board where id = ?";
		try{
			st = conn.prepareStatement(sql);
			st.setString(1, _id);
			
			rs = st.executeQuery();
			
			rs.next();
			
			return new BoardInfo(rs.getString(1) , rs.getString(2) , rs.getString(3) , rs.getString(4) , rs.getString(5));
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{
				conn.close();
				st.close();
				rs.close();
			}catch(Exception e) {}
		}
		return null;
	}
	
	public ArrayList<BoardInfo> getbords(){
		String sql = "select * from board";
		try{
			st = conn.prepareStatement(sql);
			
			rs = st.executeQuery();
			
			ArrayList<BoardInfo> boards = new ArrayList<>();
			
			while (rs.next()) {
				boards.add(new BoardInfo(rs.getString(1) , rs.getString(2) , rs.getString(3) , rs.getString(4) , rs.getString(5)));
			}
			
			return boards;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{
				conn.close();
				st.close();
				rs.close();
			}catch(Exception e) {}
		}
		return null;
	}
}