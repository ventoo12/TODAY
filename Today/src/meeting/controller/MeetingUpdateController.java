package meeting.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import meeting.domain.MeetingVO;
import meeting.persistence.MeetingDAOMyBatis;

public class MeetingUpdateController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 수정할 글번호와 비밀번호 받기
		String midx=req.getParameter("midx");
		String mpwd=req.getParameter("mpwd");
		//유효성 체크
		if(midx==null|| mpwd==null||midx.trim().isEmpty()||mpwd.trim().isEmpty()) {
			System.out.println(midx+"/"+mpwd);
			this.setViewPage("meetingInfo.do");
			this.setRedirect(true);
			return;
		}
		
		//db에서 해당 글 정보 얻기
		MeetingDAOMyBatis dao=new MeetingDAOMyBatis();
		MeetingVO vo=dao.selectOneList(new Integer(midx));
		
		//글 비밀번호 확인
		if(!vo.getMeetPwd().equals(mpwd)) {
			req.setAttribute("msg", "비밀번호가 일치하지 않습니다.");
			req.setAttribute("loc", "javascript:history.back()");
			this.setViewPage("../message.jsp");
			this.setRedirect(false);
			return;
		}
		
		
		req.setAttribute("meeting", vo);
		
		this.setViewPage("meetingUpdate.jsp");
		this.setRedirect(false);
	}

}
