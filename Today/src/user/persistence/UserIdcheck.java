package user.persistence;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;

public class UserIdcheck extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		this.setViewPage("member/idCheck.jsp");
		this.setRedirect(false);

	}

}
