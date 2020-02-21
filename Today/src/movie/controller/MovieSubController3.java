package movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import movie.domain.MovieVO;
import movie.persistence.MovieDAOMyBatis;

public class MovieSubController3 extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String MovieList = req.getParameter("MovieList_New");
		MovieDAOMyBatis dao = new MovieDAOMyBatis();

		List<MovieVO> arr = dao.movieList3();

		req.setAttribute("MovieList_New", arr);

		this.setViewPage("/movie/sub3.jsp");
		this.setRedirect(false);

	}

}
