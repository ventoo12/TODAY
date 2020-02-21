package admin.domain;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

public class BoardVO implements Serializable {
	private Integer idx;
	private String addr;
	private String title;
	private String content;
	private String pwd;
	private String author;
	private java.sql.Date indate;
	
	public BoardVO() {
		
	}
	
	public BoardVO(Integer idx, String addr, String title, String content, String pwd, String author,
			Date indate) {
		super();
		this.idx = idx;
		this.addr = addr;
		this.title = title;
		this.content = content;
		this.pwd = pwd;
		this.author = author;
		this.indate = indate;
	}
	
	public Integer getidx() {
		return idx;
	}


	public void setidx(Integer idx) {
		this.idx = idx;
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


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public java.sql.Date getIndate() {
		return indate;
	}


	public void setIndate(java.sql.Date indate) {
		this.indate = indate;
	}

	public String getFileName() {
		// TODO Auto-generated method stub
		return null;
	}


}////////////////////////////////////////
