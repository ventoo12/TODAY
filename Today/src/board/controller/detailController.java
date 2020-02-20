package board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.domain.TodayVO;
import board.domain.replyVO;
import board.persistence.TodayDAO;
import common.controller.AbstractAction;
import net.sf.json.JSONObject;

public class detailController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String num = req.getParameter("boardnum");
		System.out.println("num : "+num);
		
		TodayDAO dao = new TodayDAO();

		
		List<replyVO> replyArr=dao.getReply(num);
		TodayVO object = dao.getOne(num);
		
		object.setReplyList(replyArr);

		JSONObject obj=JSONObject.fromObject(object);
		System.out.println("JSONObj = "+obj);
		
		
		req.setAttribute("data", obj.toString());


		this.setViewPage("board/detailJSON.jsp");
		this.setRedirect(false);

	}

}

