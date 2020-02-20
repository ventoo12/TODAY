package board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.domain.TodayVO;
import board.persistence.TodayDAO;
import common.controller.AbstractAction;
import user.domain.UserVO;


public class InsertController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		HttpSession session = req.getSession();
		UserVO muser=(UserVO)session.getAttribute("loginUser");
		String name = muser.getName();
		String nick_name= muser.getNick_name();
		String content = req.getParameter("content");
		String file=req.getParameter("file");
		
		TodayVO vo = new TodayVO(null, file, name, content, nick_name, null);

		TodayDAO dao=new TodayDAO();
		
		int n=0;
		n=dao.insert(vo);

		String msg = (n>0)?"업로드 성공":"업로드 실패";
		String loc = (n>0)?"list.do":"today.do";
		
		req.setAttribute("msg", msg);
		req.setAttribute("loc", loc);
		
		this.setViewPage("message.jsp");	
		this.setRedirect(false);	

	}

}
