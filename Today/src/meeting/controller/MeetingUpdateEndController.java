package meeting.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import meeting.domain.MeetingVO;
import meeting.persistence.MeetingDAOMyBatis;

public class MeetingUpdateEndController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 수정할 글번호와 비밀번호 받기
		String midx=req.getParameter("midx");
		String category=req.getParameter("category");
		String meetName=req.getParameter("meetName");
		String meetContent=req.getParameter("meetContent");
		String mdate=req.getParameter("mdate");
		String mtime=req.getParameter("mtime");
		String personnel=req.getParameter("personnel");
		String leader=req.getParameter("leader");
		String hp1=req.getParameter("hp1");
		String hp2=req.getParameter("hp2");
		String hp3=req.getParameter("hp3");
		String place=req.getParameter("place");
		String meetPwd=req.getParameter("mpwd");
		
		System.out.println(midx+"/"+meetPwd+"/"+leader);
		//유효성 체크
		if(midx==null||meetPwd==null||leader==null) {
			this.setViewPage("main.do");
			this.setRedirect(true);
			return;
		}
		
		//vo에 담고
		MeetingVO vo=new MeetingVO(0,new Integer(midx), category, meetName, meetContent, mdate, new Integer(personnel), leader, hp1, hp2, hp3, place, meetPwd, null, mtime, 1, 0);
		
		//dao 호출
		MeetingDAOMyBatis dao=new MeetingDAOMyBatis();
		int n=dao.updateMeeting(vo);
		
		//결과 처리
		String msg=(n>0)?"정보를 수정 완료했습니다.":"정보 수정에 실패했습니다.";
		String loc=(n>0)?"meetingList.do":"javascript:history.back()";
		System.out.println("updateEndController");
		
		
		req.setAttribute("msg", msg);
		req.setAttribute("loc", loc);
		
		this.setViewPage("../message.jsp");
		this.setRedirect(false);
	}

}
