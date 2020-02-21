package admin.domain;

import java.sql.Date;

public class MemberVO {
	private int rn;
	private int idx;
	private String name;
	private String userid;
	private String pwd;
	private String email;
	private String birth;
	private String hp1;
	private String hp2;
	private String hp3;
	private String post;
	private String addr1;
	private String addr2;
	private java.sql.Date indate;
	private int mileage;
	private int m_state; 
	private String profile; 
	private String nickname;
	
	public MemberVO() {
		
	}

	public MemberVO(int rn, int idx, String name, String userid, String pwd, String email, String birth, String hp1,
			String hp2, String hp3, String post, String addr1, String addr2, Date indate, int mileage, int m_state,
			String profile, String nickname) {
		super();
		this.rn = rn;
		this.idx = idx;
		this.name = name;
		this.userid = userid;
		this.pwd = pwd;
		this.email = email;
		this.birth = birth;
		this.hp1 = hp1;
		this.hp2 = hp2;
		this.hp3 = hp3;
		this.post = post;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.indate = indate;
		this.mileage = mileage;
		this.m_state = m_state;
		this.profile = profile;
		this.nickname = nickname;
	}



	public int getRn() {
		return rn;
	}



	public void setRn(int rn) {
		this.rn = rn;
	}



	public int getIdx() {
		return idx;
	}



	public void setIdx(int idx) {
		this.idx = idx;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getUserid() {
		return userid;
	}



	public void setUserid(String userid) {
		this.userid = userid;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getBirth() {
		return birth;
	}



	public void setBirth(String birth) {
		this.birth = birth;
	}



	public String getHp1() {
		return hp1;
	}



	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}



	public String getHp2() {
		return hp2;
	}



	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}



	public String getHp3() {
		return hp3;
	}



	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}



	public String getPost() {
		return post;
	}



	public void setPost(String post) {
		this.post = post;
	}



	public String getAddr1() {
		return addr1;
	}



	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}



	public String getAddr2() {
		return addr2;
	}



	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}



	public java.sql.Date getIndate() {
		return indate;
	}



	public void setIndate(java.sql.Date indate) {
		this.indate = indate;
	}



	public int getMileage() {
		return mileage;
	}



	public void setMileage(int mileage) {
		this.mileage = mileage;
	}



	public int getM_state() {
		return m_state;
	}



	public void setM_state(int m_state) {
		this.m_state = m_state;
	}



	public String getProfile() {
		return profile;
	}



	public void setProfile(String profile) {
		this.profile = profile;
	}



	public String getNickname() {
		return nickname;
	}



	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	
	
}
