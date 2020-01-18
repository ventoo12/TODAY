<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/top_login_X.jsp" />
<div class="container">
<div class="section">
<div class="row">
<div class="col-md-12">
<!--  로그인 테스트를 위한 메인페이지입니다. 메인 페이지 생성시 경로를 바꿔주시거나 삭제해주세요 -->
 <h1>로그인 완료.</h1>
 <h2>유저 정보: </h2>
 <h3>아이디 : ${loginUser.userid}</h3>
 <h3>닉네임 : ${loginUser.nick_name}</h3>
 <h3>이  름 : ${loginUser.name}</h3>
 <h3>이메일 : ${loginUser.email}</h3>
 <h3>프로필 이미지 이름 : ${loginUser.profile}</h3>
 <div class="col-sx-5">
 <img src="images/${loginUser.profile}" class="img-responsive" style="width:45%;">
</div>
</div>
</div>
</div>
</div>
 <jsp:include page="/foot_login_X.jsp" />