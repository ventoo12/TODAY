<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.model.*"%>
<jsp:useBean id="dao" class="user.model.UserDAO" scope="session" />
<%-- UserDAO dao = new UserDAO()와 동일함 --%>
<jsp:useBean id="user" class="user.model.UserVO" scope="page" />
<%-- UserVO user = new UserVO()와 동일함 --%>
<jsp:setProperty property="*" name="user" />

<%
	String userid = user.getUserid();
	String name = user.getName();
	String pwd = user.getPwd();
	// 1. post 방식의 한글처리
	//POST 방식일때 한글이 깨지니까 인코딩처리
	// request.setCharacterEncoding("UTF-8"); ==> EncodingFilter로 처리 할 예정
	// 2. 사용자가 입력한 값 받기
	// userBean 액션을 이용해서 받는다.

	// 3. 유효성 체크 및 기타처리
	if (userid == null || name == null || pwd == null) {
		response.sendRedirect("register.jsp");
		return;
	}
	if (userid.trim().isEmpty() || name.trim().isEmpty() || pwd.trim().isEmpty()) {
%>
<script>
		alert("모든 값을 입력하세요.");
		history.back();
		</script>
<%
	return;
	}

	// 4. UserVO에 담기
	//UserVO user = new UserVO(0,name,userid,email,pwd,hp1,hp2,hp3,post,addr1,addr2,null,0,0);
	// 5. UserDAO 생성해서 insertUser() 호출
	// UserDAO dao = new UserDAO(); ==> Bean으로 생성
	// 6. 처리결과 메세지 보여주고 이동
	int n = dao.insertUser(user);
	String msg = (n > 0) ? "회원가입 완료!" : "회원가입 양식을 확인해주세요";
	String loc = (n > 0) ? "main.jsp" : "javascript:history.back()";
	// href 에 자바스크립트 함수를 적용하려면 앞에 javascript: 를 붙혀야된다.
%>
<script>
alert("<%=msg%>");
location.href="<%=loc%>";
</script>