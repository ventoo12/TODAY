package main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.domain.TodayVO;
import common.controller.AbstractAction;
import main.persistence.MainDAOMyBatis;

public class MainInputController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		//글 정보 받기
		String content=req.getParameter("content");
		String author=req.getParameter("author");
		
		if(author==null||author.trim().isEmpty()) {
			this.setViewPage("main.do");
			this.setRedirect(true);
			return;
		}
		System.out.println(content+"/"+author);
		//vo 담고, dao 호출
		TodayVO vo=new TodayVO(null, null, null, content, author, null);
		MainDAOMyBatis dao=new MainDAOMyBatis();
		int n=dao.insertBoard(vo);
		
		//결과 처리
		String msg=(n>0)?"한 줄 메모 입력 완료했습니다.":"한 줄 메모 입력 실패했습니다.";
		String loc=(n>0)?"main.do":"javascript:history.go(-1)";
		
		req.setAttribute("msg", msg);
		req.setAttribute("loc", loc);
		this.setViewPage("message.jsp");
		this.setRedirect(false);

	}

}
