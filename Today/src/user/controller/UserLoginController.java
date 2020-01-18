package user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.AbstractAction;
import user.domain.UserVO;
import user.login.UserDAOMyBatis;

// 로그인 인증 후 로그인 메인페이지로 이동하는 컨트롤러 입니다.
// 아직 설정이 덜 끝났습니다.
public class UserLoginController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 유저 파라미터 값
		String userid = req.getParameter("userid");// 아이디
		String pwd = req.getParameter("pwd");// 비밀번호
		String saveId = req.getParameter("saveId"); // 체크박스 체크여부 체크하면:on, 체크안하면:null 로 들어옴

		if (userid == null || pwd == null || userid.trim().isEmpty() || pwd.trim().isEmpty()) {
			req.setAttribute("msg", "옳지 않은 경로 입니다.");
			req.setAttribute("loc", "index.do");
			this.setRedirect(false);
			this.setViewPage("message.jsp");
			return;
		}
		
		UserDAOMyBatis dao = new UserDAOMyBatis();
		try {
			UserVO user = dao.loginCheck(userid, pwd);
			HttpSession ses = req.getSession();
			if (user != null) {
				ses.setAttribute("loginUser", user);
			}
			this.setViewPage("main.do");
			this.setRedirect(true);
		} catch (Exception e) {
			//System.out.println("여기서 오류남");
			req.setAttribute("msg", "옳지 않은 경로 입니다.");
			req.setAttribute("loc", "index.do");
			this.setRedirect(false);
			this.setViewPage("message.jsp");
			return;
		}

	}

}
