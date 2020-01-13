package user.login;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import user.login.*;

public class NewUser extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
        // view page 회원가입
		this.setViewPage("member/register.jsp");
		
		// 이동방식 forward
		this.setRedirect(false);
		
	}
	
}
