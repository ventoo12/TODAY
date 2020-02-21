package movie.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import common.controller.AbstractAction;

public class MovieMainController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		this.setViewPage("/movie/main.jsp");
		this.setRedirect(false);
		
		}

}


