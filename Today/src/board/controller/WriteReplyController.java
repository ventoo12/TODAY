package board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.domain.replyVO;
import board.persistence.TodayDAO;
import common.controller.AbstractAction;
import user.domain.UserVO;


public class WriteReplyController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String reply = req.getParameter("reply");
		String boardnum=req.getParameter("boardnum");

		HttpSession session = req.getSession();
		UserVO muser=(UserVO)session.getAttribute("loginUser");
		String name = muser.getName();
		String nick_name= muser.getNick_name();

		TodayDAO dao=new TodayDAO();
		replyVO vo = new replyVO(null, boardnum, reply, nick_name, null);

		int n=0;		
		n=dao.writeReply(vo);

		String msg = (n>0)?"댓글작성성공":"댓글작성실패";
		String loc = "javascript:history.back()";
	
		req.setAttribute("msg", msg);
		req.setAttribute("loc", loc);
		
		this.setViewPage("message.jsp");	//View
		this.setRedirect(false);	//forward
	}

}
