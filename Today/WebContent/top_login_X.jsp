<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String myctx = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<title>TIS SNS 데모 모델</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>

 <!-- Custom styles for this template-->
 <link href="css/sb-admin-2.min.css" rel="stylesheet">

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <img src="https://modo-phinf.pstatic.net/20200102_42/1577941769736ytv5z_PNG/mosaz6XgYJ.png?type=w556" style="width:45%;" class="w3-round"><br><br>
    <h4><b>로그인을 해주세요</b></h4>
  </div>
  <div class="w3-bar-block">
    <a href="<%=myctx%>/member/login.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>로그인</a>
    <a href="<%=myctx%>/register.do" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>회원가입</a>  
  </div>
  
    <!-- Alert Box -->
    <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
      <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
        <i class="fa fa-remove"></i>
      </span>
      <p><strong>사이트 관리자로 부터 공지!</strong></p>
      <p>비회원일 경우 회원가입을 해주세요!</p>
    </div>
  
  <!-- End Left Column -->

  <div class="w3-panel w3-large">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="https://modo-phinf.pstatic.net/20200102_42/1577941769736ytv5z_PNG/mosaz6XgYJ.png?type=w556" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
    <h1><b>ToDay Now</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">메뉴 : </span> 
      <button class="w3-button w3-black">메인 홈</button>
      <button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>자유 게시판</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>포인트 샵</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i> 영화</button>
    </div>
    </div>
  </header>
  
  <!-- First Photo Grid-->
  <!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
    <!-- The Grid -->
    <div class="w3-row">
      
      
      <!-- Middle Column -->
      <div class="w3-col m9">