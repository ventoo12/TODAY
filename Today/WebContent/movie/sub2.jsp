<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/movie/top.jsp" />
<style>
.img-responsive {
	width: 320px;
	border: 1px solid white;
	height: 410px;
	padding: 3px;
}
</style>

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
<link href="sub.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center text-warning">누구나 무료</h1>
					<p class="lead text-center text-danger">이 달의 업데이트</p>
					<ul class="nav nav-justified nav-pills">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"> <select>
									<option value="1">누구나 무료</option>
									<option value="2">인기 영화</option>
									<option value="3">최신 영화</option>
							</select> <br> <i class="fa fa-caret-down"></i>
						</a> <input type="radio" name="fruit" value="최신순" /> 최신순 <input
							type="radio" name="fruit" value="가나다순" checked="checked" /> 가나다순
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
								<li class="divider"></li>
								<li class="divider"></li>
								<li class="divider"></li>
								<li class="divider"></li>
								<li class="divider"></li>
							</ul></li>
					</ul>
					<ul class="nav nav-pills"></ul>
				</div>
			</div>
		</div>
	</div>

	<div class="section"></div>

	<!-- --------------------------- -->
	<div class="section">
		<div class="container">
			<div class="row">
				<c:forEach var="movie1" items="${MovieList_Hit}" varStatus="state">
					<div class="col-md-3 col-xs-3">
						<a><img src="./images/소장용 인기영화/${movie1.images}"
							class="img-responsive"></a>
					</div>
					<c:if test="${state.count%4==0}">
					</c:if>
				</c:forEach>
			</div>
			<div class="row"></div>
		</div>
	</div>
	<!-- --------------------------- -->

	<!--div 끝  ----------------------------------------------------------------------------------->
	<div class="section">
		<div class="container">
			<div class="row text-center">
				<div class="col-xs-3 text-center">
					<a><i class="fa fa-5x fa-fw fa-instagram"></i></a>
				</div>
				<div class="col-xs-3">
					<a><i class="fa fa-5x fa-fw fa-twitter"></i></a>
				</div>
				<div class="col-xs-3">
					<a><i class="fa fa-5x fa-fw fa-facebook"></i></a>
				</div>
				<div class="col-xs-3 text-center">
					<a><i class="fa fa-5x fa-fw fa-github"></i></a>
				</div>
			</div>
		</div>
	</div>
</body>
<jsp:include page="/movie/foot.jsp" />