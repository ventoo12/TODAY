<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>idCheck</title>
<script>
$(function(){
	$('#userid').focus(); // userid창에 포커스
})
</script>
</head>
<body>
	<%
		String method = request.getMethod();
		out.println("method = " + method + "<br>");
		// 요청방식이 get이면 아이디 입력 form을 보여주고,
		//         post이면 그 실행결과(아이디 사용가능 여부)를 보여줄 예정

		switch (method) {
		case "GET": {
	%>
	<div class="container">
		<div class="row" style="margin-top: 30px">
			<form name="idf" id="idf" action="idCheck.jsp" method="post">
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
		case "POST": { // 요청 방식이 post일 경우 => ID 중복 여부 결과를 보여준다
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
		<jsp:useBean id="dao" class="user.model.UserDAO" scope="session" />
		<%
		boolean canUse = dao.idCheck(userid.trim());// .trim()으로 공백제거 후 인자설정
			
		%>
		<div class="container text-center">
		<% if(canUse){ // canUse가 true 라면 %>
		<!-- ------------- -->
		<h2>ID로 <span class="text-danger"><%=userid%></span>를 사용할 수 있습니다.</h2>
		<button type="button" class="btn btn-success" onclick="set('<%=userid%>')">닫기</button>
		<% } else {  %>
		<!-- ------------ -->
		<h2><span class="text-danger"><%=userid%></span>는 이미 사용중입니다.</h2>
		<!-- 창 태그 -->
		<div class="row" style="margin-top: 30px">
			<form name="idf" id="idf" action="idCheck.jsp" method="post">
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
		// alert(uid);
		//부모창의 userid 입력값으로 넣어주기
		opener.document.mf.userid.value=uid;
		// 만약 form name이 없다면 아래와 같이 설정
		// opener.document.forms[0].userid.value=uid;
		//팝업창 닫기
		self.close();
	}
	</script>
</body>
</html>