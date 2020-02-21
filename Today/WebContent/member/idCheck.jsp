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
<title>아이디 중복 체크</title>
<script>
$(function(){
	$('#userid').focus(); // userid창에 포커스
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
			<form name="idf" id="idf" action="idCheck.do" method="post">
				<label for="userid" class="col-xs-2">아이디</label>
				<div class="col-xs-8">
					<input type="text" name="userid" id="userid" class="form-control"
						placeholder="아이디를 입력하세요" required>
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
			String userid = request.getParameter("userid");
			if(userid==null||userid.trim().isEmpty()){
	%>
			<script>
			alert('아이디를 입력하세요');
			history.back();
			</script>
			<%
				return;
					} // if
			%>
		<jsp:useBean id="dao" class="user.persistence.UserDAOMyBatis" scope="session" />
		<%
		boolean canUse = dao.idCheck(userid.trim());
			
		%>
		<div class="container text-center">
		<% if(canUse){ // 아이디 중복시 %>
		<!-- ------------- -->
		<h2>ID로 <span class="text-danger"><%=userid%></span>를 사용할 수 있습니다.</h2>
		<button type="button" class="btn btn-success" onclick="set('<%=userid%>')">닫기</button>
		<% } else {  %>
		<!-- ------------ -->
		<h2><span class="text-danger"><%=userid%></span>는 이미 사용중입니다.</h2>
		<!-- 창 태그 -->
		<div class="row" style="margin-top: 30px">
			<form name="idf" id="idf" action="idCheck.do" method="post">
				<label for="userid" class="col-xs-2">아이디</label>
				<div class="col-xs-8">
					<input type="text" name="userid" id="userid" class="form-control"
						placeholder="아이디를 입력하세요" required>
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
	function set(uid){

		opener.document.mf.userid.value=uid;

		self.close();
	}
	</script>
</body>
</html>