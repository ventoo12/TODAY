package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// 홈 화면(비로그인)으로 돌아가는 페이징 처리입니다.
public class IndexAction  extends AbstractAction{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		this.setViewPage("index.jsp");
		
		this.setRedirect(false);
		
	}
	
}
