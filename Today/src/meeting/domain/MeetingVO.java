package meeting.domain;

import java.io.Serializable;
import java.util.Date;

public class MeetingVO implements Serializable{

	private int idx;
	private int midx;
	private String category;
	private String meetName;
	private String meetContent;
	private String mdate;
	private int personnel;
	private String leader;
	private String hp1;
	private String hp2;
	private String hp3;
	private String place;
	private String meetPwd;
	private String image;
	private String mtime;
	private int rstatus;
	private int rpersonnel;
	
	public MeetingVO() {
		
	}

	public MeetingVO(int idx, int midx, String category, String meetName, String meetContent, String mdate,
			int personnel, String leader, String hp1, String hp2, String hp3, String place, String meetPwd, String image,
			String mtime, int rstatus, int rpersonnel) {
		super();
		this.idx = idx;
		this.midx = midx;
		this.category = category;
		this.meetName = meetName;
		this.meetContent = meetContent;
		this.mdate = mdate;
		this.personnel = personnel;
		this.leader = leader;
		this.hp1 = hp1;
		this.hp2 = hp2;
		this.hp3 = hp3;
		this.place = place;
		this.meetPwd = meetPwd;
		this.image = image;
		this.mtime = mtime;
		this.rstatus = rstatus;
		this.rpersonnel = rpersonnel;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getMidx() {
		return midx;
	}

	public void setMidx(int midx) {
		this.midx = midx;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getMeetName() {
		return meetName;
	}

	public void setMeetName(String meetName) {
		this.meetName = meetName;
	}

	public String getMeetContent() {
		return meetContent;
	}

	public void setMeetContent(String meetContent) {
		this.meetContent = meetContent;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
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

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getMeetPwd() {
		return meetPwd;
	}

	public void setMeetPwd(String meetPwd) {
		this.meetPwd = meetPwd;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getMtime() {
		return mtime;
	}

	public void setMtime(String mtime) {
		this.mtime = mtime;
	}

	public int getRstatus() {
		return rstatus;
	}

	public void setRstatus(int rstatus) {
		this.rstatus = rstatus;
	}

	public int getRpersonnel() {
		return rpersonnel;
	}

	public void setRpersonnel(int rpersonnel) {
		this.rpersonnel = rpersonnel;
	}

}
