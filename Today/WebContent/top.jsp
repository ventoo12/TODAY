<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String myctx = request.getContextPath();%>
<!DOCTYPE html>
<html>
<title>TODAY SNS</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
  <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
 <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
</style>
<script type="text/javascript">
	function go(cmd){
		if(cmd==1){
			location.href="<%=myctx%>/main.do";
		}else if(cmd==4){
			location.href="<%=myctx%>/meeting/meetingList.do";
		}
	}

</script>

<body class="w3-light-grey w3-content" style="max-width:1600px">
<!-- 사이드바 메뉴 시작 -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar">
    <!-- 프로필 div -->
    <div class="w3-card w3-round w3-white">
      <div class="w3-container">
       <h4 class="w3-center" style="padding-top:20px">${loginUser.nick_name}</h4>
       <p class="w3-center"><img src="<%=myctx%>/images/${loginUser.profile}" class="w3-circle" style="height:106px;width:106px" alt="Avatar">
       </p>
       	<p class="w3-center"><a href="<%=myctx%>/profile/profileEdit.do" >설정</a></p>
       <hr>
       <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> ${loginUser.nick_name}님 환영합니다.</p>
       <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> ${loginUser.addr1}</p>
       <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> ${loginUser.birth}</p>
      </div>
    </div>
    <!-- 프로필 div 끝 -->
    
    <!-- 관심 분야 테그 div --> 
    <div class="w3-card w3-round w3-white w3-hide-small">
      <div class="w3-container">
        <p>관심 분야</p>
        <p>
          <span class="w3-tag w3-small w3-theme-d5">뉴스</span>
          <span class="w3-tag w3-small w3-theme-d4">디저트</span>
          <span class="w3-tag w3-small w3-theme-d3">디자인</span>
          <span class="w3-tag w3-small w3-theme-d2">롤</span>
          <span class="w3-tag w3-small w3-theme-d1">GTA5</span>
          <span class="w3-tag w3-small w3-theme">풍경사진</span>
          <span class="w3-tag w3-small w3-theme-l1">술</span>
          <span class="w3-tag w3-small w3-theme-l2">맛집</span>
          <span class="w3-tag w3-small w3-theme-l3">코딩</span>
          <span class="w3-tag w3-small w3-theme-l4">취업</span>
        </p>
      </div>
    </div>
    <br>
    <!-- 관심 분야 테그 div 끝--> 

  <div class="w3-bar-block">
    <a href="<%=myctx%>/list.do" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>내 게시판</a> 
    <a href="<%=myctx%>/first.do" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>게시물 업로드</a> 
    <c:if test="${loginUser.m_state eq 99}"><!-- 회원상태가 관리자일 경우 -->
    <a href="<%=myctx%>/userList.do" onclick="w3_close()" class="w3-bar-item w3-button w3-padding" style="color:red"><i class="fa fa-user fa-fw w3-margin-right" style="color:red"></i>관리자페이지</a>
    </c:if>
    <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>내정보</a> 
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>쪽지함</a>
    <a href="<%=myctx%>/logout.do" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>로그아웃</a>
  </div>
    <!-- 사이드바 메뉴 끝 -->
    
    <!-- 공지 알람창 div 시작 -->
    <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
      <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
        <i class="fa fa-remove"></i>
      </span>
      <p><strong>사이트 관리자로 부터 공지!</strong></p>
      <p>이용하실때 불편한 점은 없나요?</p>
    </div>
  <!-- 공지 알람창 div 끝 -->
  <!-- 로고 모음 div -->
  <div class="w3-panel w3-large">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</nav>
<!-- 로고 모음 div 끝 / 왼쪽 네비게이션 끝 -->

<!-- 휴대폰 화면에서 네비게이션 액션 div -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !페이지 시작 div ! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="<%=myctx%>/images/${loginUser.profile}" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container" align="center">
    <img src="<%=myctx%>/images/logo.png" style="width: 250px;height: 150px;padding-top:20px">
    <!-- <h1><b>ToDay Now</b></h1> -->
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">메뉴 : </span> 
      <button class="w3-button w3-black" onclick="go(1)"><i class="fa fa-1x fa-fw fa-home"></i>Home</a></button>
      <button class="w3-button w3-white" onclick="javascript:location.href='/Today/list.do'"><i class="fa fa-diamond w3-margin-right"></i>자유 게시판</button>
      <!-- <button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>포인트 샵</button> -->
      <button class="w3-button w3-white w3-hide-small" onclick="javascript:location.href='/Today/moviemain.do'"><i class="fa fa-map-pin w3-margin-right"></i> 영화</button>
     <!-- <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i> 지도</button> -->
      <button class="w3-button w3-white w3-hide-small"  onclick="go(4)"><i class="fa fa-map-pin w3-margin-right"></i>소모임</button>
    </div>
    </div>
  </header>
  <!-- Header 끝 -->
  
  <!-- Page Container 시작 -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:50px">    
    <!-- 메인 그리드 시작 -->
    <div class="w3-row">
      <!-- 메인 컬럼 div 시작 -->
      <div class="w3-col m9">