package jsp;

public class UserInfo{
	private String id;
	private String name;
	private String pw;
	private String email;
	public UserInfo(String _id , String _name , String _pw , String _email) {
		this.id = _id;
		this.name = _name;
		this.pw = _pw;
		this.email = _email;
	}
	
	public String getID() {return id;}
	public String getNAME() {return name;}
	public String getPW() {return pw;}
	public String getEMAIL() {return email;}
	
}
