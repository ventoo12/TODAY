package board.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.controller.AbstractAction;

public class MainController extends AbstractAction {

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
		
		String file=mreq.getFilesystemName("file");
	
		//사진 원하는 크기로 자르기-------------------------------------------------
		String originPath =dir.getAbsolutePath()+"\\"+file;

		Image image = ImageIO.read(new File(originPath));

		Image resize = image.getScaledInstance(180, 200, Image.SCALE_SMOOTH);
		
		BufferedImage result=new BufferedImage(180,200, BufferedImage.TYPE_INT_RGB);
		Graphics g = result.getGraphics();
		
	    g.drawImage(resize, 0, 0, null);
	    g.dispose();
	
		ImageIO.write(result, "jpg", new File(upDirSm+File.separator+file));
		//사진 원하는 크기로 자르기----------------------------------------------------
		req.setAttribute("file", file);

		this.setViewPage("board/main.jsp");
		this.setRedirect(false);

	}

}
