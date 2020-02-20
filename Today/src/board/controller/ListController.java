package board.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.domain.TodayVO;
import board.persistence.TodayDAO;
import common.controller.AbstractAction;
import user.domain.UserVO;


public class ListController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		HttpSession session = req.getSession();
		UserVO user=(UserVO)session.getAttribute("loginUser");
		String nick_name =(user!=null)? user.getNick_name():"";
		
		TodayDAO dao = new TodayDAO();
		List<TodayVO> list=dao.mylist(nick_name);
		int total = dao.total(nick_name);

		Collections.reverse(list);
		
		req.setAttribute("boardlist", list);
		req.setAttribute("total", total);
		req.setAttribute("id", nick_name);
		System.out.println("nick_name : "+nick_name);

		
		this.setViewPage("board/list.jsp");
		this.setRedirect(false);

	}

}
