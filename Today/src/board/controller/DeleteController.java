package board.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.persistence.TodayDAO;
import common.controller.AbstractAction;

public class DeleteController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
			String boardnum = req.getParameter("boardnum");
			TodayDAO dao = new TodayDAO();
			
			int n=dao.delete(boardnum);	
				
			String msg = (n>0)?"삭제 성공":"삭제 실패";
			String loc = "list.do";
		
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			this.setViewPage("message.jsp");	//View
			this.setRedirect(false);	//forward�̵�
		
	}

}
