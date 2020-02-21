package admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.AbstractAction;
import user.domain.UserVO;
import admin.persistence.MemberDAO;

/*#����¡ ó�� ����#############################
 * 1. �ѰԽñ� �� db���� ��������     => totalCount
 * 2. �� �������� �Խ��� �� �� ���ϱ� =>  pageSize(5��) 
 * 3. �������� ����ϱ� => pageCount
 --------------------------------
   if(totalCount%pageSize==0)
		pageCount=totalCount/pageSize;
   else
		pageCount=totalCount/pageSize +1
------------------------------------
=> ���ٷ� ���̸� pageCount=(totalCount-1)/pageSize+1;

4. �������� ��ŭ jsp���� ������ �׺���̼��� �����.
   ==> ��ũ �ɾ ������ cpage �� �Ķ���Ͱ����� �ѱ��.
5. cpage���� pageSize�� ���� db���� ����� ���� ��(start,end)�� �����Ѵ�.   
6. sql�� �ۼ� (start, end�� ���)
 		end=cpage*pageSize
 		start=end-(pageSize-1)
7. sql��-------------------------------------
  select * from(
	select row_number() over(order by idx desc) rn, board.*
	from board) where rn between #{start} and #{end} 		
----------------------------------------------------------   
 * 
 * */
public class MemberListController extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// ==================================================
		HttpSession session = req.getSession(); // 세션불러오기
		// 주소로 치고들어올때 빠꾸
		UserVO user = (UserVO) session.getAttribute("loginUser");
		if (user.getM_state() != 99) {
			req.setAttribute("msg", "관리자 권한이 없습니다!");
			req.setAttribute("loc", "index.do");
			this.setRedirect(false);
			this.setViewPage("message.jsp");
			return;
		}
		// ===================================================
		String ftype = req.getParameter("findType");// �˻� ����
		String fkeyword = req.getParameter("findKeyword");// �˻��� �ޱ�

		// ���� ������ �������� �ޱ�(cpage)
		String cpStr = req.getParameter("cpage");
		if (cpStr == null || cpStr.trim().isEmpty()) {
			cpStr = "1";// ����Ʈ�� ������ �������� 1�������� ����
		}

		String psStr = req.getParameter("pageSize");
		if (psStr == null || psStr.trim().isEmpty()) {
			// ���ǿ� ������ pageSize�� �ִ��� ��������.
			psStr = (String) session.getAttribute("pageSize");
			if (psStr == null) {
				psStr = "15";// ����Ʈ pageSize�� 5�� ����
			}
		}
		session.setAttribute("pageSize", psStr);
		// ���ǿ� pageSize�� �����ϸ� ������ȿ�ð� ���� �Խù� ��� ������ �����Ѵ�.

		MemberDAO dao = new MemberDAO();

		// �� �ɹ� �� ��������
		int totalCount = 0;

		totalCount = dao.getTotalCount(ftype, fkeyword);

		int pageSize = Integer.parseInt(psStr.trim());
		// �� ������ �� ������ �ɹ��� (����Ʈ: 5��)
		// �Խñ� ��������

		// ������ �� �����ϱ�
		int pageCount = 1;
//		 if(totalCount%pageSize==0)
//			pageCount=totalCount/pageSize;
//		else
//			pageCount=totalCount/pageSize +1;

		pageCount = (totalCount - 1) / pageSize + 1;

		int cpage = Integer.parseInt(cpStr.trim());
		if (cpage < 1) {
			cpage = 1;// ����Ʈ ������ 1������
		}

		if (cpage > pageCount) {
			cpage = pageCount;
		}
		// ���� �������� �ش��ϴ� �Խñ۸� ��������=>DB���� ���� ��������
		int end = cpage * pageSize;// sql������ �������� ����
		int start = end - (pageSize - 1);
		System.out.println("start: " + start + ", end: " + end);

		// List<UserVO> arr=dao.listMember(start, end, ftype, fkeyword);
		List<UserVO> arr = dao.listMember(start, end, ftype, fkeyword);
		System.out.println("arr: " + arr + ", fkeyword=" + fkeyword);
		req.setAttribute("memberArr", arr);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("pageCount", pageCount);
		req.setAttribute("pageSize", pageSize);
		req.setAttribute("cpage", cpage);// Integer��ü�� �����

		if (fkeyword != null)
			fkeyword = java.net.URLEncoder.encode(fkeyword, "UTF-8");

		// �˻�� �ѱ��� ��� IE ��� ��û���ο� ���ڵ� ó�� ����� ��
		// �˻�����, �˻��� ����
		req.setAttribute("findType", ftype);
		req.setAttribute("findKeyword", fkeyword);

		// �� ������ ����, �̵���� ����
		this.setViewPage("/admin/userList.jsp");

		this.setRedirect(false);
	}

}
