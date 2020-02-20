package movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import movie.domain.MovieVO;
import movie.persistence.MovieDAOMyBatis;

public class MovieListController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		MovieDAOMyBatis dao=new MovieDAOMyBatis();
		List<MovieVO> ml=dao.mList();
		
		
		req.setAttribute("mlist", ml);
		this.setViewPage("/movie/movieList.jsp");
		this.setRedirect(false);
	}
}
