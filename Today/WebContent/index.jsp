<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String myctx = request.getContextPath();
    %>
    
<!-- 비 로그인시 보여줄 메인 페이지 화면 입니다. -->
<!--  top -->
<jsp:include page="/top_login_X.jsp" />
<!--  top -->
<div class="w3-container w3-card w3-white w3-round w3-margin">
	<br>
	<div class="col-xl-10 col-lg-12 col-md-10">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-6 d-none d-lg-block bg-login-image">
					 <h6>[1월] Best Photo "사진찍는 패럿"님의 프로필</h6>
					</div>
					<div class="col-lg-6">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-8">로그인</h1>
							</div>
							<form class="user">
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										id="userid" name="userid"
										placeholder="이메일 / 아이디를 입력하세요">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-user"
										id="pwd" name="pwd" placeholder="비밀번호">
								</div>
								<div class="form-group">
									<div class="custom-control custom-checkbox small">
										<input type="checkbox" class="custom-control-input"
											id="customCheck"> <label class="custom-control-label"
											for="customCheck">아이디 기억하기</label>
									</div>
								</div>
								<a href="<%=myctx%>/member/login.jsp" class="btn btn-primary btn-user btn-block">
									로그인 </a>
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="<%=myctx%>/member/find.jsp">아이디가 기억나지 않나요?</a>
							</div>
							<div class="text-center">
								<a class="small" href="<%=myctx%>/member/register.jsp">무료 회원가입하기!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<!--  foot -->
<jsp:include page="/foot_login_X.jsp" />
<!--  foot -->