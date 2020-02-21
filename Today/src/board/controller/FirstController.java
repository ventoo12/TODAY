package board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.AbstractAction;
import user.domain.UserVO;

public class FirstController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		// ==================================================
		HttpSession session = req.getSession(); // 세션불러오기
		// 주소로 치고들어올때 빠꾸
		UserVO user = (UserVO) session.getAttribute("loginUser");
		if (user == null) {
			req.setAttribute("msg", "먼저 로그인을 해주세요");
			req.setAttribute("loc", "index.do");
			this.setRedirect(false);
			this.setViewPage("message.jsp");
			return;
		}
		// ===================================================

		this.setViewPage("board/first.jsp");
		this.setRedirect(false);
	}

}
