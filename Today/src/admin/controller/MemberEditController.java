package admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import user.domain.UserVO;
import admin.persistence.MemberDAO;

public class MemberEditController extends AbstractAction {
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String idx=req.getParameter("idx");
		String mstate =req.getParameter("m_state");
		
		if(idx==null||mstate==null) {
			this.setViewPage("userList.do");
			this.setRedirect(true);
			return;
		}
		
		UserVO vo = new UserVO(new Integer(idx), null, null, null, null, null, null,
				null, null, null, null, null, null, null,0,
				new Integer(mstate), null, 0);
		
		MemberDAO dao=new MemberDAO();
		int n = dao.updateState(vo);
		
		String msg=(n>0)? "���� ����":"���� ����";
		String loc=(n>0)? "userList.do":"javascript:history.back()";
		
		req.setAttribute("msg", msg);
		req.setAttribute("loc", loc);
		
		this.setViewPage("message.do");
		this.setRedirect(false);
	}
}
