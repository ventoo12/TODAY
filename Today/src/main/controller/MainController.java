package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.domain.TodayVO;
import common.controller.AbstractAction;
import main.persistence.MainDAOMyBatis;
import user.domain.UserVO;
// 로그인 테스트를 위한 페이지입니다. 메인페이지 완성시 연결해주세요
public class MainController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//==================================================
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
		//===================================================
		
		MainDAOMyBatis dao=new MainDAOMyBatis();
		List<TodayVO> arr=dao.listBoard();
		
		req.setAttribute("boardList", arr);

		this.setViewPage("/main/main.jsp");
		this.setRedirect(false); 
 
	} 
 
}
