package admin.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.domain.BoardVO;
import admin.persistence.BoardDAO;
import common.controller.AbstractAction;

public class BoardDeleteController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 1. ������ �۹�ȣ�� ��й�ȣ �ޱ�
		String idx=req.getParameter("idx");
		// 2. ��ȿ�� üũ
		if(idx==null||idx.trim().isEmpty()) {
			this.setViewPage("AdminBoardList.jsp");
			this.setRedirect(true);
			return;
		}
		
		//3. �ش� ���� ���� üũ
		BoardDAO dao=new BoardDAO();
		BoardVO board=dao.selectBoard(idx);
		if(board==null) {
			req.setAttribute("msg", "�ش� ���� �����");
			req.setAttribute("loc", "AdminBoardList.jsp");
			this.setViewPage("message.jsp");
			this.setRedirect(false);
			return;
		}				
		//4. �����ϸ� ���� ó��
		int n=dao.deleteBoard(idx);//db���� ���� ó��
		
		this.setViewPage("/admin/AdminBoardList.jsp");
		this.setRedirect(true);
	}

}
