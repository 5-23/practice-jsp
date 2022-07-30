package jsp;

public class BoardInfo{
	private String id;
	private String writer;
	private String title;
	private String content;
	private String regdate;
	
	public BoardInfo(String _id , String _writer , String _title , String _content , String _regdate) {
		this.id = _id;
		this.writer = _writer;
		this.title = _title;
		this.content = _content;
		this.regdate = _regdate;
	}
	
	public String getID() {return id;}
	public String getWRITER() {return writer;}
	public String getTITLE() {return title;}
	public String getCONTENT() {return content;}
	public String getREGDATE() {return regdate;}
	
}
