package admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.AbstractAction;
import user.domain.UserVO;
import admin.persistence.BoardDAO;
import admin.persistence.MemberDAO;

public class AdminMainController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// ==================================================
		HttpSession session = req.getSession(); // 세션불러오기
		// 주소로 치고들어올때 빠꾸
		UserVO user = (UserVO) session.getAttribute("loginUser");
		if (user.getM_state() != 99) {
			req.setAttribute("msg", "관리자 권한이 없습니다!");
			req.setAttribute("loc", "index.do");
			this.setRedirect(false);
			this.setViewPage("message.jsp");
			return;
		}
		// ===================================================
		MemberDAO dao = new MemberDAO();
		BoardDAO bdao = new BoardDAO();

		int totalCount = 0;
		int totalCount2 = 0;

		totalCount = dao.getTotalCount(null, null);
		totalCount2 = bdao.getTotalCount();

		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalCount2", totalCount2);

		this.setViewPage("/admin/adminMain.jsp");
		this.setRedirect(false);

	}
}
