package board.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.domain.TodayVO;
import board.persistence.TodayDAO;
import common.controller.AbstractAction;
import user.domain.UserVO;


public class update_Controller extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
			ServletContext application = req.getServletContext();
			
			String upDir=application.getRealPath("/Upload");
			String upDirSm=application.getRealPath("/Upload_small");	
			

			File dir=new File(upDir);
			File dir_sm=new File(upDirSm);
			
			if(!dir.exists()) { dir.mkdirs(); }
			if(!dir_sm.exists()) { dir_sm.mkdirs(); }

			MultipartRequest mreq = new MultipartRequest(req,upDir,10*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
			
			System.out.println("MultipartRequest: "+mreq);

			String file=mreq.getFilesystemName("file");
			String content = mreq.getParameter("content");
			String num = mreq.getParameter("boardnum");

			if(file!=null) {	//새로 선택된 사진의 크기를 조절하고 저장하기
				
				String originPath =dir.getAbsolutePath()+"\\"+file;
	
				Image image = ImageIO.read(new File(originPath));
				
				Image resize = image.getScaledInstance(180, 200, Image.SCALE_SMOOTH);
				
				BufferedImage result=new BufferedImage(180,200, BufferedImage.TYPE_INT_RGB);
				Graphics g = result.getGraphics();
				
			    g.drawImage(resize, 0, 0, null);
			    g.dispose();
				
				ImageIO.write(result, "jpg", new File(upDirSm+File.separator+file));
			
			}
			//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			HttpSession session = req.getSession();
			UserVO muser=(UserVO)session.getAttribute("loginUser");
			String name = muser.getName();
			String nick_name= muser.getNick_name();
			
			TodayVO vo = new TodayVO(num, file, name, content, nick_name, null);
			//file값이 null로 올 경우(사진은 수정하기 않고 내용만 수정했을 경우) Mapper에서 if문으로 수정한다.
	
			TodayDAO dao=new TodayDAO();
			int n=0;
			
			n=dao.update(vo);
			
			String msg = (n>0)?"수정성공":"수정실패";
			String loc = (n>0)?"list.do":"update.do";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);

			this.setViewPage("message.jsp");	//View
			this.setRedirect(false);	//forward�
	

	}

}
