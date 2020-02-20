package board.domain;

import java.sql.Timestamp;

public class replyVO {
	private String reply_num;
	private String board_num;
	private String content;
	private String author;
	private java.sql.Timestamp wdate;
	
	public replyVO() {
		
	}
	
	public replyVO(String reply_num, String board_num, String content, String author, Timestamp wdate) {
		super();
		this.reply_num = reply_num;
		this.board_num = board_num;
		this.content = content;
		this.author = author;
		this.wdate = wdate;
	}

	public String getReply_num() {
		return reply_num;
	}

	public void setReply_num(String reply_num) {
		this.reply_num = reply_num;
	}

	public String getBoard_num() {
		return board_num;
	}

	public void setBoard_num(String board_num) {
		this.board_num = board_num;
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
