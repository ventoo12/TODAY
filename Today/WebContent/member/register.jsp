<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String myctx = request.getContextPath();%>
<jsp:include page="/member/top3.jsp" />
<script type="text/javascript">
/* 아이디, 닉네임 중복체크를 위해 팝업창을 띄운다*/
var win = null;
var win2 = null;
var flag = false;
var flag2 = false;

var idCheck=function(){
	var url="idCheck.jsp";
	win=window.open(url,"idCheck","width=460, height=180, left=100, top=100");
	flag = true; // 아이디 중복체크 버튼을 누르면 true로 변경
}
var nickCheck=function(){
	var url2="nickCheck.jsp";
	win2=window.open(url2,"nickCheck","width=460, height=180, left=100, top=100");
	flag2 = true; // 닉네임 중복체크 버튼을 누르면 true로 변경
}


var check = function(){
	if(!flag){ // 중복체크를 하지 않았다면
		alert('[필수] 아이디 중복체크');
		mf.userid.focus();
		return false;
	}
	if(!mf.userid.value){
		alert('[필수] 아이디 중복체크');
		mf.userid.focus();
		return false;
	}
	if(!flag2){
		alert('[필수] 닉네임 중복체크');
		mf.user// 아직안함!!!!!!!!!!!!!!!!!!!!!!!!!!
	}
	// 그외 유효성 체크 : 정규식 이용해서 필터링
	
	return true;
}
</script>
<div class="w3-container w3-card w3-white w3-round w3-margin">
	<div class="col-xl-10 col-lg-12 col-md-10">
		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="container">
					<div class="section">
						<div class="row">
							<div class="col-md-12">
								<form name="mf" role="form" class="form-horizontal" onsubmit="return check()"
								action="registerEnd.jsp" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<div class="col-sm-2">
											<label for="name" class="control-label">이름</label>
										</div>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="name"
												placeholder="성함을 입력하세요" name="name">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="nick_name" class="control-label">닉네임</label>
										</div>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="nick_name"
												placeholder="사용할 닉네임을 입력해주세요" name="nick_name">
										</div>
										<div class="col-sm-2">
											<button type="button" onclick="nickCheck()"
												class="btn btn-danger">중복체크</button>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="profile" class="control-label">프로필 사진</label>
										</div>
										<div class="col-sm-3">
											<input type="file" name="file" id="file" class="control-label">30Mb 이하,
												권장사이즈 180x180, 240x280 jpg,png,jpeg
										</div>
										<div class="col-sm-2">
											<img src="<%=myctx%>/images/profile1.jpg" class="img-responsive">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="userid" class="control-label">아이디</label>
										</div>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="userid"
												placeholder="로그인 아이디" name="userid">
										</div>
										<div class="col-sm-2">
											<button type="button"  onclick="idCheck()"
												class="btn btn-danger">중복체크</button>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="pwd" class="control-label">비밀번호</label>
										</div>
										<div class="col-sm-3">
											<input type="password" class="form-control" id="pwd"
												name="pwd" placeholder="비밀번호">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="pwd2" class="control-label">비밀번호 확인</label>
										</div>
										<div class="col-sm-3">
											<input type="password" class="form-control" id="pwd2"
												placeholder="비밀번호 확인" name="pwd2">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="email" class="control-label">이메일</label>
										</div>
										<div class="col-sm-4">
											<input type="email" class="form-control" id="email"
												placeholder="abc123@naver.com" name="email">
											<div class="checkbox">
												<label> <input type="checkbox">이메일 수신 동의
												</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="birth" class="control-label">생년월일</label>
										</div>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="birth"
												placeholder="1992/01/12" name="birth">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="hp" class="control-label" contenteditable="true">연락처</label>
										</div>
										<div class="col-sm-1">
											<select id="tel" name="tel" class="form-control"
												style="width: 6em">
												<option value="skt">SKT</option>
												<option value="kt">KT</option>
												<option value="lgt">LGT</option>
												<option value="else">알뜰폰</option>
											</select>
										</div>
										<div class="col-sm-1">
											<select id="hp1" name="hp1" class="form-control"
												style="width: 6em">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
										</div>
										<div class="col-sm-2">
											<input type="text" maxlength="4" class="form-control"
												id="hp2" placeholder="1234" name="hp2">
										</div>
										<div class="col-sm-2">
											<input type="text" maxlength="4" class="form-control"
												id="hp3" placeholder="5678" name="hp3">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="post" class="control-label">우편번호</label>
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="post"
												placeholder="10521" name="post" maxlength="5" required="">
										</div>
										<div class="col-sm-2">
											<button type="button" onclick="zipCheck()"
												class="btn btn-danger">우편번호체크</button>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label for="addr" class="control-label">주소</label>
										</div>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="addr1"
												placeholder="서울특별시 영등포구 당산동" name="addr1">
										</div>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="addr2"
												name="addr2" placeholder="당산 자이아파트 102동 302호">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<div class="col-sm-3">
												<button type="button" onclick="rgCheck()"
													class="btn btn-danger" data-toggle="modal">이용약관보기</button>
											</div>
											<div class="checkbox">
												<label> <input type="checkbox">이용약관에 동의합니다.
												</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-success">회원가입</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/member/foot3.jsp" />