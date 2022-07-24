package asdf;

import java.sql.*;

public class UserDAO{
	private Connection conn;
	private PreparedStatement st;
	private ResultSet rs;

	public UserDAO(){
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp" , "root" , "mysql");
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	public void insertUser(String id , String name , String pw , String email){
		String sql = "INSERT INTO userTabel VALUES(? , ? , ? , ?)";
		
		try{
			st = conn.prepareStatement(sql);
			st.setString(1 , id);
			st.setString(2 , name);
			st.setString(3 , pw);
			st.setString(4 , email);
			
			st.executeQuery();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try{
				st.close();
				conn.close();
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void deleteUser(String id , String pw){
		String sql = "DELETE FROM userTabel WHERE Uid=? and Upw=?";
		
		try{
			st = conn.prepareStatement(sql);
			st.setString(1 , id);
			st.setString(2 , pw);
			
			st.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try{
				st.close();
				conn.close();
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void updateUser(String id , String name , String pw , String email){
		String sql = "UPDATE userTabel SET Uname=? , Upw=? , Uemail=? WHERE Uid=?";
		
		try{
			st = conn.prepareStatement(sql);
		  	st.setString(1 , name);
		  	st.setString(2 , pw);
		  	st.setString(3 , email);
		  	st.setString(4 , id);
			
			st.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try{
				st.close();
				conn.close();
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	
	
}
