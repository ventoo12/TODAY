package movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import movie.domain.MovieVO;
import movie.persistence.MovieDAOMyBatis;


public class MovieDeleteController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		MovieDAOMyBatis dao=new MovieDAOMyBatis();
		List<MovieVO> md=dao.mDelete();
		
		String code=req.getParameter("code");
		
		
		if(code==null) {
			req.setAttribute("mList", "mList");
			this.setViewPage("movieList.jsp");
			this.setRedirect(true);
			return;
		}
		
		
		int n=dao.(code);
		
		if(n>0) {
			if(.getFileName()!=null) {
				
			}
		}
		
		
		this.setViewPage("/movie/movieList.do");
		this.setRedirect(true);
		
	}
}
