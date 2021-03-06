<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String myctx = request.getContextPath();
%>
<!--  top -->
<jsp:include page="/top.jsp" />
<script>
	var check = function() {
		if (!sf.searchType.value) {
			alert('검색 유형을 선택해 주세요.');
			sf.searchType.focus();
			return;
		}
		if(!sf.keyword.value){
			alert('검색어를 입력해 주세요.');
			sf.keyword.focus();
			return;
		}
		sf.submit();
	}
</script>
<!--  top -->
<!-- Input Your JSP Code Start-->
<body>
	<h1 align="center">소모임 모집</h1>
	<div class="row text-right">
		<form id="sf" action="meetingList.do" onsubmit="return check()">
			<div class="col-md-5">
				<div class="btn-group">
					<select class="form-control" name="searchType">
						<option value="">== 검색 유형 ==</option>
						<option value="1">글번호</option>
						<option value="2">모집분야</option>
						<option value="3">모임명</option>
						<option value="4">장소</option>
						<option value="5">모집상태</option>
					</select>
				</div>
			</div>
			<div class="col-md-6 text-right">
				<div class="form-group">
					<div class="input-group">
						<input type="text" class="form-control" id="keyword" name="keyword" placeholder="검색어를 입력해주세요.">
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button" id="btnSearch" onclick="check()">
									Go
								</button>
							</span>
					</div>
				</div>
			</div>
		</form>
	</div>
	<div class="row">
		<div class="col-md-12">
			<table class="table table-bordered table-hover table-striped">
				<thead>
					<tr>
						<th id="midx" class="midx">글번호</th>
						<th id="mfield" class="mfield">분야</th>
						<th id="mname" class="mname">모임명</th>
						<th id="mcontent" class="mcontent">모임내용</th>
						<th id="mtime" class="mtime">모임일정</th>
						<th id="mplace" class="mplace">장소</th>
						<th id="recruitnumber" class="recruitnumber">모집인원</th>
						<th id="recruitstate" class="recruitstate">모집상태</th>
					</tr>
				</thead>
				<tbody>

					<!-- 반복문 시작 ------------------------------------- -->
					<c:if test="${meetingList eq null || empty meetingList}">
						<tr>
							<td colspan="8" class="text-center">소모임 모집글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${meetingList ne null}">
						<c:forEach var="meetingAll" items="${meetingList}">
							<tr>
								<td>${meetingAll.midx}</td>
								<td>${meetingAll.category}</td>
								<td>
									<a href="meetingInfo_new.do?midx=${meetingAll.midx}" style="color:black;text-decoration:none">
									${meetingAll.meetName}
									</a>
								</td>
								<td>${meetingAll.meetContent}</td>
								<td>
									<%-- <fmt:formatDate value="${meetingAll.mdate}" pattern="yyyy-MM-dd" /> --%>
									 ${meetingAll.mdate} | ${meetingAll.mtime}
								</td>
								<td>${meetingAll.place}</td>
								<td>${meetingAll.rpersonnel}/${meetingAll.personnel}</td>
								<c:if test="${meetingAll.rstatus eq 1}">
									<td><p class="text-danger">모집중</p></td>
								</c:if>
								<c:if test="${meetingAll.rstatus ne 1}">
									<td><p class="text-primary">모집완료</p></td>
								</c:if>
							</tr>
						</c:forEach>
					</c:if>
					<!-- 반복문 끝 ------------------------------------- -->

				</tbody>
			</table>
		</div>
	</div>
	<div class="col-md-11 text-right">
		<a class="btn btn-primary" href="<%=myctx%>/meeting/meeting.do">소모임
			등록<br>
		</a>
	</div>
	
	<!-- 페이징 처리 시작 --------------------------------------------------- -->
	<div class="row">
		<div class="col-md-12 col-offset-1 text-center">
			<ul class="pagination" id="pageCount">
			<c:set var="query" value="searchType=${searchType}&keyword=${keyword}" />
				<li><a href="#">◀</a></li>
				<c:forEach var="i" begin="1" end="${pageCount}" step="1">
					<c:if test="${i eq cpage}">
						<li class="active"><a href="meetingList.do?cpage=${i}&${query}">${i}</a></li>
					</c:if>
					<c:if test="${i ne cpage}">
						<li><a href="meetingList.do?cpage=${i}&${query}">${i}</a>
					</c:if>
				</c:forEach>
				<li><a href="#">▶</a></li>
			</ul>
		</div>
	</div>
	<!-- 페이징 처리 끝 ---------------------------------------------------- -->
</body>
<!-- Input Your JSP Code End-->
<!--  foot -->
<jsp:include page="/foot.jsp" />
<!--  foot -->