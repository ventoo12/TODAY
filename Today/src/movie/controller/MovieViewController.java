package movie.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import movie.domain.MovieVO;
import movie.persistence.MovieDAOMyBatis;

public class MovieViewController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
	
		// 1. 영화 번호 받기
		String num=req.getParameter("code");
		
		//3. DAO생성해서 메소드 호출
		MovieDAOMyBatis dao=new MovieDAOMyBatis();
	//	MovieVO nb=dao.selectList(code);
		
		//4. 그 결과 req에 저장
	//	req.setAttribute("ml", nb);
	//	req.setAttribute("code",code);
		
		this.setViewPage("movie/movieView.jsp");
		this.setRedirect(false);
	}

}