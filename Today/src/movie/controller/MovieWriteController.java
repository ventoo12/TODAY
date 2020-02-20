package movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import movie.domain.MovieVO;
import movie.persistence.MovieDAOMyBatis;

public class MovieWriteController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		MovieDAOMyBatis dao=new MovieDAOMyBatis();
		List<MovieVO> mw=dao.mWrite();


		this.setViewPage("/movie/movieWrite.jsp");
		this.setRedirect(false);
		
	}
}
	
