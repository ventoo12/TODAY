package meeting.controller;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.controller.AbstractAction;
import meeting.domain.MeetingVO;
import meeting.persistence.MeetingDAOMyBatis;
import user.domain.UserVO;

public class MeetingInsertController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// ==================================================
		HttpSession session = req.getSession(); // 세션불러오기
		// 주소로 치고들어올때 빠꾸
		UserVO user = (UserVO) session.getAttribute("loginUser");
		if (user == null) {
			req.setAttribute("msg", "먼저 로그인을 해주세요");
			req.setAttribute("loc", "index.do");
			this.setRedirect(false);
			this.setViewPage("message.jsp");
			return;
		}
		// ===================================================
		// 1-1. 파일 처리
		// 1) 디렉토리 절대경로 구하기
		ServletContext app = req.getServletContext();
		String upDir = app.getRealPath("/file_images");
		System.out.println("업로드한 파일 경로: " + upDir);
		File dir = new File(upDir);
		if (!dir.exists()) {
			dir.mkdir();
		}
		// 2) 파일명 중복 처리
		DefaultFileRenamePolicy dr = new DefaultFileRenamePolicy();
		// 3) 파일 업로드 처리
		MultipartRequest mr = new MultipartRequest(req, upDir, 10 * 10 * 1024, "UTF-8", dr);

		if (dir.exists()) {
			long fileSize = dir.length();
			if (fileSize > 10 * 10 * 1024) {
				req.setAttribute("msg", "파일의 크기가 커서 저장할 수 없습니다. ");
				req.setAttribute("loc", "javascript:history.go(-1)");

				this.setViewPage("../message.jsp");
				this.setRedirect(false);
			}
		}

		// 2. 입력값 받기
		String category = mr.getParameter("category");
		String meetName = mr.getParameter("meetName");
		String meetContent = mr.getParameter("meetContent");
		String mdate = mr.getParameter("mdate");
		int personnel = Integer.parseInt(mr.getParameter("personnel"));
		String leader = mr.getParameter("leader");
		String hp1 = mr.getParameter("hp1");
		String hp2 = mr.getParameter("hp2");
		String hp3 = mr.getParameter("hp3");
		String place = mr.getParameter("place");
		String meetpwd = mr.getParameter("meetpwd");
		String image = mr.getFilesystemName("image");
		String mtime = mr.getParameter("mtime");

		// 3. VO 담기
		MeetingVO meeting = new MeetingVO(0, 0, category, meetName, meetContent, mdate, personnel, leader, hp1, hp2,
				hp3, place, meetpwd, image, mtime, 1, 0);

		// 4. DAO 생성
		MeetingDAOMyBatis dao = new MeetingDAOMyBatis();
		int n = dao.insertMeeting(meeting);

		// 5. 경로 및 결과 문구 출력
		String msg = (n > 0) ? "소모임 등록이 완료되었습니다." : "소모임이 등록되지 않았습니다.";
		String loc = (n > 0) ? "meetingList.do" : "javascript:history.go(-1)";

		req.setAttribute("msg", msg);
		req.setAttribute("loc", loc);

		this.setViewPage("../message.jsp");
		this.setRedirect(false);
	}

}
