package movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import movie.domain.MovieVO;
import movie.persistence.MovieDAOMyBatis;

public class MovieSubController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String MovieList = req.getParameter("MovieList_Mileage");
		MovieDAOMyBatis dao=new MovieDAOMyBatis();
		
		List<MovieVO> arr=dao.movieList();
		
		req.setAttribute("MovieList_Mileage", arr);
		
		this.setViewPage("/movie/sub.jsp");
		this.setRedirect(false);
		 
	}

}
