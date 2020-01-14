package user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
// 로그인 인증 후 로그인 메인페이지로 이동하는 컨트롤러 입니다.
// 아직 설정이 덜 끝났습니다.
public class UserLoginController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		this.setViewPage("메인페이지 이름.jsp");
		this.setRedirect(false);

	}

}
