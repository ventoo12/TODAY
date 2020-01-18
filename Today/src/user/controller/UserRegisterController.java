package user.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.controller.AbstractAction;
import user.domain.UserVO;
import user.login.UserDAOMyBatis;

// 회원가입 버튼을 누르면 유효성 , 필터 확인 후 DB에 등록. 후 보여줄 페이지 컨트롤러입니다.
public class UserRegisterController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 프로필 사진 업로드
		javax.servlet.ServletContext application = req.getServletContext();
		String upDir = application.getRealPath("/images");
		File dir = new File(upDir);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		// cos.jar 업로드 처리
		MultipartRequest mreq = new MultipartRequest(req, upDir, 10 * 1024 * 10, "UTF-8",
				new DefaultFileRenamePolicy());

		// 유저 파라미터 값
		String name = mreq.getParameter("name");
		String nick_name = mreq.getParameter("nick_name");
		String userid = mreq.getParameter("userid");
		String email = mreq.getParameter("email");
		String pwd = mreq.getParameter("pwd");
		String birth = mreq.getParameter("birth");
		String hp1 = mreq.getParameter("hp1");
		String hp2 = mreq.getParameter("hp2");
		String hp3 = mreq.getParameter("hp3");
		String post = mreq.getParameter("post");
		String addr1 = mreq.getParameter("addr1");
		String addr2 = mreq.getParameter("addr2");
		int mileage = 1000;
		int m_state = 0;
		String profile = mreq.getFilesystemName("file");
		System.out.println("업로드한 파일 : "+profile);
		File mfile = mreq.getFile("profile"); // 파일이 없으면 null 반환

		// 유효성 체크
		if (name == null || pwd == null || nick_name == null) {
			this.setViewPage("register.do"); // 글쓰기 페이지로
			this.setRedirect(true); // 리다이렉트 이동
			return;
		}

		UserVO vo = new UserVO(0, name, nick_name, userid, email, pwd, birth, hp1, hp2, 
				hp3, post, addr1, addr2, null, mileage, m_state, profile);

		UserDAOMyBatis dao = new UserDAOMyBatis();
		int n = dao.insertUser(vo);

	
		String msg = (n > 0) ? "회원가입 완료!" : "가입실패, 내용을 확인하세요";
		String loc = (n > 0) ? "index.do" : "javascript:history.back()";

		req.setAttribute("msg", msg);
		req.setAttribute("loc", loc);

		this.setViewPage("message.jsp");
		this.setRedirect(false);

	}

}
