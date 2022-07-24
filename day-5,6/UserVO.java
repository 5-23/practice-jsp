package asdf;

import java.util.*;
import java.sql.*;

public class UserVO{
	public List<UserVO> UserList = new ArrayList<>();
	
	private String id;
	private String name;
	private String pw;
	private String email;
	
	private Connection conn;
	private PreparedStatement st;
	private ResultSet rs;
	
	public UserVO(){
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp" , "root" , "mysql");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void setALL(String _id , String _name , String _pw , String _email) {
		this.id = _id;
		this.name = _name;
		this.pw = _pw;
		this.email = _email;
	}
	
	public void setID(String _id) {this.id = _id;}
	public void setNAME(String _name) {this.name = _name;}
	public void setPW(String _pw) {this.pw = _pw;}
	public void setEMAIL(String _email) {this.email = _email;}
	
	
	public List<UserVO> getUsers(){
		   List<UserVO> userList = new ArrayList<>();

		   String sql = "SELECT * FROM user_tbl";
		   try {
		      st = conn.prepareStatement(sql);
		      
		      rs = st.executeQuery();
		      
		      while(rs.next()) {
		         UserVO vo = new UserVO();
		         
		         vo.setID(rs.getString(1));
		         vo.setPW(rs.getString(2));
		         vo.setNAME(rs.getString(3));
		         vo.setEMAIL(rs.getString(4));
		         
		         System.out.println("DB에서 꺼낸 데이터 확인 : " + vo);
		      }
		      
		   } catch(Exception e) {
		      e.printStackTrace();
		   } finally {
		      try {
		         conn.close();
		         st.close();
		         rs.close();
		      }catch(Exception e) {
		         e.printStackTrace();
		      }
		   }
		   return userList;
		}
	
	public List<UserVO> getUsers(String WHERE){
		   List<UserVO> userList = new ArrayList<>();

		   String sql = "DELETE FROM userTabel WHERE "+WHERE;
		   try {
		      st = conn.prepareStatement(sql);
		      
		      rs = st.executeQuery();
		      
		      while(rs.next()) {
		         UserVO vo = new UserVO();
		         
		         vo.setID(rs.getString(1));
		         vo.setPW(rs.getString(2));
		         vo.setNAME(rs.getString(3));
		         vo.setEMAIL(rs.getString(4));
		         
		         System.out.println("DB에서 꺼낸 데이터 확인 : " + vo);
		      }
		      
		   } catch(Exception e) {
		      e.printStackTrace();
		   } finally {
		      try {
		         conn.close();
		         st.close();
		         rs.close();
		      }catch(Exception e) {
		         e.printStackTrace();
		      }
		   }
		   return userList;
		}
	
	@Override
	public String toString() {
		return "userVO [id="+id+" name="+name+" pw="+pw+" email="+email+"]";
	}
	
}


