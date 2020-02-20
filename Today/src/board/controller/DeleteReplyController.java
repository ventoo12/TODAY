package board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.persistence.TodayDAO;
import common.controller.AbstractAction;

public class DeleteReplyController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String replynum = req.getParameter("reply_number");
		TodayDAO dao = new TodayDAO();
	
		int n=dao.deleteReply(replynum);	

		String msg = (n>0)?"댓글 삭제 성공":"댓글 삭제 실패";
		String loc = "javascript:history.back()";
	
		req.setAttribute("msg", msg);
		req.setAttribute("loc", loc);
		
		this.setViewPage("message.jsp");	//View
		this.setRedirect(false);	//forward�̵�
	

	}

}
