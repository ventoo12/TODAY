package board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;

public class UpdateController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String num = req.getParameter("boardnum");
		String content=req.getParameter("content");
		String filename=req.getParameter("filename");

		req.setAttribute("boardnum", num);
		req.setAttribute("content", content);
		req.setAttribute("filename", filename);
		
		this.setViewPage("board/update.jsp");
		this.setRedirect(false);


	}

}
