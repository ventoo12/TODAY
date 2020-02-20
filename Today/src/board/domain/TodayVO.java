package board.domain;

import java.sql.Timestamp;
import java.util.List;

public class TodayVO {
	private String boardnum;
	private String addr;
	private String title;
	private String content;
	private String author;
	private java.sql.Timestamp wdate;
	
	//////////////////////////////////////////////////////////////////////////////////////////////////
	private List<replyVO> replyList;
	
	public List<replyVO> getReplyList() {
		return replyList;
	}

	public void setReplyList(List<replyVO> replyList) {
		this.replyList = replyList;
	}
	
	
	public TodayVO(String boardnum, String addr, String title, String content, String author, Timestamp wdate,
			List<replyVO> replyList) {
		super();
		this.boardnum = boardnum;
		this.addr = addr;
		this.title = title;
		this.content = content;
		this.author = author;
		this.wdate = wdate;
		this.replyList = replyList;
	}

	////////////////////////////////////////////////////////////////////////////////////////////////

	public TodayVO(String boardnum, String addr, String title, String content, String author, Timestamp wdate) {
		super();
		this.boardnum = boardnum;
		this.addr = addr;
		this.title = title;
		this.content = content;
		this.author = author;
		this.wdate = wdate;
	}

	public TodayVO() {
		
	}

	public String getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(String boardnum) {
		this.boardnum = boardnum;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public java.sql.Timestamp getWdate() {
		return wdate;
	}

	public void setWdate(java.sql.Timestamp wdate) {
		this.wdate = wdate;
	}
	
	


	
	

}
