package meeting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.AbstractAction;
import meeting.domain.MeetingVO;
import meeting.persistence.MeetingDAOMyBatis;
import user.domain.UserVO;

public class MeetingListController extends AbstractAction {

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
		// 검색 키워드 받기
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");

		// 페이지 값 받기
		String cpStr = req.getParameter("cpage");
		if (cpStr == null || cpStr.trim().isEmpty()) {
			cpStr = "1";
		}

		String psStr = req.getParameter("pageSize");
		if (psStr == null || psStr.trim().isEmpty()) {
			psStr = (String) session.getAttribute("pageSize");
			if (psStr == null) {
				psStr = "5";
			}
		}
		session.setAttribute("pageSize", psStr);

		MeetingDAOMyBatis dao = new MeetingDAOMyBatis();

		int totalCount = 0;
		totalCount = dao.getTotalCount(searchType, keyword);

		int pageSize = Integer.parseInt(psStr.trim());

		int pageCount = 1;

		pageCount = (totalCount - 1) / pageSize + 1;

		int cpage = Integer.parseInt(cpStr.trim());
		if (cpage < 1) {
			cpage = 1;
		}
		if (cpage > pageCount) {
			cpage = pageCount;
		}
		int end = cpage * pageSize;
		int start = end - (pageSize - 1);

		List<MeetingVO> mList = dao.selectAllList(searchType, keyword, start, end);

		req.setAttribute("meetingList", mList);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("pageCount", pageCount);
		req.setAttribute("pageSize", pageSize);
		req.setAttribute("cpage", cpage);

		if (keyword != null) {
			keyword = java.net.URLEncoder.encode(keyword, "UTF-8");
		}
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);

		this.setViewPage("meetingList.jsp");
		this.setRedirect(false);
	}

}
