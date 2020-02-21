<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% 
response.setHeader("Pragma","No-cache"); //HTTP 1.0 
response.setDateHeader ("Expires", 0); 
response.setHeader("Cache-Control","no-cache");
String myctx=request.getContextPath();  
%> 
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>회원 목록(Admin Page)</title>

<!-- Custom fonts for this template-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./css/sb-admin-2.min.css" rel="stylesheet">
<link href="./css/button" rel="stylesheet">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
</head>
<body id="page-top">

	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="adminMain.do">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">관리자 페이지</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">사용자 관리</div>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="userList.do"> <i class="fas fa-fw fa-wrench"></i> <span>사용자
						조회</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">게시판 관리</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link" href="main.do"> <i
					class="fas fa-fw fa-folder"></i> <span>메인 페이지</span>
			</a></li>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="adminBoard.do">
					<i class="fas fa-fw fa-chart-area"></i> <span>게시판</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="<%=myctx%>/moviemain.do"> <i
					class="fas fa-fw fa-table"></i> <span>영화</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">
			
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="<%=myctx%>/logout.do"> <i
				class="fas fa-fw fa-table"></i> <span>로그아웃</span></a></li>

		</ul>



		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 table-responsive">
				<br>
					<h1 class="text-primary text-center">회원 목록 [Admin Page]</h1>

				<br>
				<form name="bf" id="bf" role="form" action="userEdit.do" method="POST">
					<table class="table table-condensed table-striped">
						<tr>
								<th font-size:"10px">유저 정보</th>
								<th>이름</th>
								<th>아이디</th>
								<th>닉네임</th>
								<th>이메일</th>
								<th>상태</th>
								<th>변경</th>
								<th>적용</th>
						</tr>
						<c:if test="${memberArr ==null || empty memberArr }">
							<tr>
								<td colspan="5"><b>유저가 없습니다..</b></td>
							</tr>
						</c:if>${member.m_state}
		<c:if test="${memberArr !=null && not empty memberArr}">
			
		<c:forEach var="member" items="${memberArr}">
		<c:choose>
				<c:when test="${member.m_state eq '0'}">
					<c:set var="userState" value="활동회원"/>
				</c:when>
				<c:when test="${member.m_state eq -1 }">
					<c:set var="userState" value="정지회원"/>
				</c:when>
				<c:when test="${member.m_state eq 99 }">
					<c:set var="userState" value="관리자"/>
				</c:when>
				<c:otherwise>
					<c:set var="userState" value="탈퇴회원" />
				</c:otherwise>
			</c:choose>
		<tr>
			<td>
				<c:out value="${member.idx}"/>
			</td>
			<td align="left">
				<a href="mypage.do?idx=${member.idx}">
				<c:out value="${member.name}"/>
			</a></td>
			<td>
				<c:out value="${member.userid}"/>
			</td>
			<td>
				<c:out value="${member.nick_name}"/>
			</td>
			<td>
				<c:out value="${member.email}"/>
			</td>
			<td>
				<c:out value="${userState}"/>
			</td>
			<td>
				<select name="state" id="state${member.idx}">
					<option value="0">일반</option>
					<option value="-1">정지</option>
					<option value="99">매니저</option>
				</select> 
			</td>
			<td>
				<button type="button" id="btnEdit" class="btn btn-success" onclick="edit('${member.idx}','${member.m_state}')">수정</button>
			</td>
		</tr>
		</c:forEach>
		</c:if>	
						<!-- ----------------------------- -->
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="3" class="text-center">
								<ul class="pagination">
									<!-- 검색시 사용되는 쿼리 스트링: 페이지네비에 붙이자.------ -->
									<c:set var="query"
										value="findType=${findType}&findKeyword=${findKeyword}" />
									<!-- ------------------------------------------------------ -->
									<c:forEach var="i" begin="1" end="${pageCount}" step="1">
										<c:if test="${i eq cpage}">
											<li class='active'><h4><a
												href="userList.do?cpage=${i}&${query}">[${i}]</a></h4></li>
										</c:if>
										<c:if test="${i ne cpage}">
											<li><h4><a href="userList.do?cpage=${i}&${query}">[${i}]</a></h4></li>
										</c:if>
									</c:forEach>
								</ul>
							</td>
							<td colspan="5">총 회원 수:       
								<span class="text-danger" style="font-weight: bold"> 
									<c:out value="${totalCount}"/>명
								</span>
							</td>
						</tr>
					</table>
					</form>
				</div>
			</div>
			<!-- 검색 시작 -->
			<div class="section">
				<form name="sf" action="userList.do" onsubmit="return check()">
					<div align="center" id="bbs" class="col-md-10 col-md-offset-2">
						<select name="findType">
							<option value="1">이름</option>
							<option value="2">아이디</option>
							<option value="3">이메일</option>
						</select> 
						<input type="text" name="findKeyword" placeholder="검색어를 입력하세요">
						<button type="button" onclick="check()" class="btn btn-warning">검색</button>
						<%
							String keyword = (String) request.getAttribute("findKeyword");
							if (keyword != null) {
								keyword = java.net.URLDecoder.decode(keyword, "UTF-8");
							}
							request.setAttribute("keyword", keyword);
						%>
					</div>
				</form>
			</div>
		</div>
		<!-- 검색 끝 -->
		
		<script type="text/javascript">
			var check=function(){
				if(!sf.findType.value){
					alert('검색 유형을 선택하세요');
					sf.findType.focus();
					return false;
				}
				
				if(!sf.findKeyword.value){
					alert('검색어를 입력하세요');
					sf.findKeyword.focus();
					return false;
				}
				sf.submit();
			}
			
			function edit(midx, mstate){
				//alert($('#state'+midx).val());
				if ($('#state'+midx).val()==parseInt(mstate)) {
					alert('똑같은 상태입니다.');
					bf.state.focus();
					return;
				}
			}
		
			
			/* function goEditEnd(){
				//사용자가 입력한 수정값들을 서버에 파라미터로 넘겨야 한다.
				//var paramData="isbn="+$('#isbn').val()+"&title="+$('#title').val();
				//파라미터 데이터를 만들어주는 함수 : $(폼객체).serialize()
				var paramData=$('#editF').serialize();		
				$.ajax({
					type:'POST',
					url:'stateEdit.jsp',
					data:paramData,
					dataType:'xml',
					success:function(res){
						//alert(res);
						var n=$(res).find('result').text();// typeof ==> string
						if(parseInt(n)>0){
								
						}else{
							alert('수정 실패');				
						}
					},
					error:function(err){
						alert('error: '+err.status)
					}
				});
			}//------------------------------------------------------------------- */
		</script>