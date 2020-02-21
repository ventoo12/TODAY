<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="user.persistence.*" %>
<%
	String myctx = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=myctx%>/css/form1.css" rel="stylesheet" type="text/css">
<title>닉네임 체크</title>
<script>
$(function(){
	$('#nick_name').focus(); // nick_name창에 포커스
})
</script>
</head>
<body>
	<%
		String method = request.getMethod();
			switch (method) {
			case "GET": {
	%>
	<div class="container">
		<div class="row" style="margin-top: 30px">
			<form name="idf" id="idf" action="nickCheck.do" method="post">
				<label for="userid" class="col-xs-2">닉네임</label>
				<div class="col-xs-8">
					<input type="text" name="nick_name" id="nick_name" class="form-control"
						placeholder="닉네임을 입력하세요" required>
				</div>
				<div class="col-xs-2">
					<button class="btn btn-primary">확인</button>
				</div>
			</form>
		</div>
	</div>
	<%
		}
		break;
			case "POST": {
			String nick_name = request.getParameter("nick_name");
			if(nick_name==null||nick_name.trim().isEmpty()){
	%>
			<script>
			alert('닉네임을 입력하세요');
			history.back();
			</script>
			<%
				return;
					} // if
			%>
		<jsp:useBean id="dao" class="user.persistence.UserDAOMyBatis" scope="session" />
		<%
		boolean canUse = dao.nick_check(nick_name.trim());
			
		%>
		<div class="container text-center">
		<% if(canUse){ // 아이디 중복시 %>
		<!-- ------------- -->
		<h2>닉네임 <span class="text-danger"><%=nick_name%></span>를 사용할 수 있습니다.</h2>
		<button type="button" class="btn btn-success" onclick="set('<%=nick_name%>')">닫기</button>
		<% } else {  %>
		<!-- ------------ -->
		<h2><span class="text-danger"><%=nick_name%></span>는 이미 사용중입니다.</h2>
		<!-- 창 태그 -->
		<div class="row" style="margin-top: 30px">
			<form name="idf" id="idf" action="nickCheck.do" method="post">
				<label for="userid" class="col-xs-2">닉네임</label>
				<div class="col-xs-8">
					<input type="text" name="nick_name" id="nick_name" class="form-control"
						placeholder="닉네임을 입력하세요" required>
				</div>
				<div class="col-xs-2">
					<button class="btn btn-primary">확인</button>
				</div>
			</form>
		</div>
		<!-- 창 태그 END-->
		<% }// else 끝 %>
		</div>
		<%
		}
			break;
		} // switch();
	%>
	<script>
	function set(nick){

		opener.document.mf.nick_name.value=nick;

		self.close();
	}
	</script>
</body>
</html>