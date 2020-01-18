package main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
// 로그인 테스트를 위한 페이지입니다. 메인페이지 완성시 연결해주세요
public class MainController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        
		this.setViewPage("main.jsp");
		this.setRedirect(false);

	}

}
