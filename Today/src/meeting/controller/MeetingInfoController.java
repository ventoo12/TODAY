package meeting.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import meeting.domain.MeetingVO;
import meeting.persistence.MeetingDAOMyBatis;

public class MeetingInfoController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		//모집글 번호 받기
		String num=req.getParameter("midx");
		if(num==null||num.trim().isEmpty()) {
			this.setViewPage("meetingList.do");
			this.setRedirect(true);
			return;
		}

		int midx=Integer.parseInt(num);
		
		MeetingDAOMyBatis dao=new MeetingDAOMyBatis();
		MeetingVO vo=dao.selectOneList(midx);
		
		req.setAttribute("meetingInfo", vo);
		req.setAttribute("midx", midx);
		
		this.setViewPage("meetingInfo_new.jsp");
		this.setRedirect(false);
	}

}
