package user.domain;

import java.io.Serializable;
import java.sql.Date;

public class UserVO implements Serializable {
	
	private int idx;
	private String name;
	private String nick_name;
	private String userid;
	private String email;
	private String pwd;
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
	
	public UserVO() {
		
	}

	public UserVO(int idx, String name, String nick_name, String userid, String email, String pwd, String birth, String hp1, String hp2, String hp3,
			String post, String addr1, String addr2, Date indate, int mileage, int m_state, String profile) {
		super();
		this.idx = idx;
		this.name = name;
		this.nick_name = nick_name;
		this.userid = userid;
		this.email = email;
		this.pwd = pwd;
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
	} // 기본 생성자 생성 -> Source -> 제너레이터 컨스트럭터 using 필드

	
	// 휴대폰 번호 결합
	public String getAllHp() {
		return hp1+"-"+hp2+"-"+hp3;
	}
	// 주소 결합
	public String getAllAddr() {
		return "["+post+"] "+addr1+" "+addr2;
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

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

}
