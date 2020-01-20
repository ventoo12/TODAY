<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <% String myctx = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<title>TODAY 회원 가입</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<link href="<%=myctx%>/css/form1.css" rel="stylesheet" type="text/css">
<style>
body, html {
  height: 100%;
  font-family: "Inconsolata", sans-serif;
}

.bgimg {
  background-position: center;
  background-size: contain;
  background-image: url("https://modo-phinf.pstatic.net/20200118_252/1579337837602ny3sa_JPEG/mosayq1SWA.jpeg?type=w556");
  min-height: 60%;
}

.menu {
  display: none;
}
</style>
<body>

<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-padding w3-black">
    <div class="w3-col s3">
      <a href="index.do" class="w3-button w3-block w3-black">메인</a>
    </div>
    <div class="w3-col s3">
      <a data-toggle="modal" href="#myModal" class="w3-button w3-block w3-black">누르면 터짐</a>
    </div>
    <div class="w3-col s3">
      <a href="about.do" class="w3-button w3-block w3-black">TODAY 소개</a>
    </div>
    <div class="w3-col s3">
      <a href="javascript:alert('문의 사절')" class="w3-button w3-block w3-black">문의</a>
    </div>
  </div>
</div>

<!-- Header with image -->
<header class="bgimg w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-bottomleft w3-center w3-padding-large w3-hide-small">
    <span class="w3-tag">TODAY 회원가입</span>
  </div>
  <div class="w3-display-middle w3-center">
    
  </div>
  <div class="w3-display-bottomright w3-center w3-padding-large">
    <span class="w3-text-white">TIS Team Project</span>
  </div>
</header>

<!-- Add a background color and large text to the whole page -->
<div class="w3-sand w3-grayscale w3-large">

<!-- 회원가입 Container -->
<div class="w3-container" id="about">
  <div class="w3-content" style="max-width:900px">
    <h3 class="w3-center w3-padding-64"><span class="w3-tag w3-wide">TODAY 회원 가입</span></h3>