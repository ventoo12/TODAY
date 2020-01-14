package user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
// 회원가입 버튼을 누르면 유효성 , 필터 확인 후 DB에 등록. 후 보여줄 페이지 컨트롤러입니다.
public class UserRegisterController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		this.setViewPage("회원가입후 보여줄 페이지.jsp");
		this.setRedirect(false);

	}

}
