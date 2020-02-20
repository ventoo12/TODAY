package movie.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.controller.AbstractAction;
import movie.domain.MovieVO;
import movie.persistence.MovieDAOMyBatis;


public class MovieUpdateController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 업로드할 디렉토리의 절대경로 
		ServletContext app=req.getServletContext();
		String upDir=app.getRealPath("/images");
		System.out.println("upDir="+upDir);
		File dir=new File(upDir);
		if(!dir.exists()) {
			dir.mkdir();
		}
		
		DefaultFileRenamePolicy df=new DefaultFileRenamePolicy();
		//파일 업로드 처리
		MultipartRequest mr=new MultipartRequest(req,upDir,10*1024*1024,"UTF-8",df);
		
		//파라미터값 받기
		String title=mr.getParameter("title");
		String director=mr.getParameter("director");
		String actor=mr.getParameter("actor");
		int price=Integer.parseInt(mr.getParameter("price"));
		int code=Integer.parseInt(mr.getParameter("code"));
		
		
		
		
		//업로드한 파일명
		//String pimage1=mr.getFilesystemName("pimage1");
		//String pimage2=mr.getFilesystemName("pimage2");
		//String pimage3=mr.getFilesystemName("pimage3");
		
		MovieVO mvo=new MovieVO(title,director,actor,
		price,code);
		
		
		MovieDAOMyBatis dao=new MovieDAOMyBatis();
		List<MovieVO> mu=dao.mUpdate(mvo);
		

		req.setAttribute("mUpdate", mu);
		this.setViewPage("/movie/movieUpdate.jsp");
		this.setRedirect(false);
		
	
	
	}
}
