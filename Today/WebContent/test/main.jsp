<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--  top -->
<jsp:include page="./top.jsp" />
<!--  top -->
<script type="text/javascript">
	$(function(){
		$('#btnsubmit').click(function(){
			if(!$('#content').val()){
				alert('글을 작성해 주세요.');
				$('#content').focus();
				return;
			}
			$('#mainContentForm').submit();
			alert($('#content').val());
		});
	});
</script>
    <!-- Input Your JSP Code Start-->
    <body>
    <!-- <h1>테스트입니다.</h1> --> 
    <div class="w3-row-padding">
          <div class="w3-col m12">
            <div class="w3-card w3-round w3-white">
              <div class="w3-container w3-padding">
                <h3 class="w3-opacity">한 줄 게시글</h3>
                <form name="mainContentForm" id="mainContentForm" action="main.do" method="POST" enctype="multipart/form-data">
                <p contenteditable="true" class="w3-border w3-padding" id="content"> 글을 작성해 주세요.</p>
                <button type="button" class="w3-button w3-theme" id="btnsubmit"><i class="fa fa-pencil"></i>  등록</button> 
                </form>
              </div>
            </div>
          </div>
        </div> 
        <!-- 반복문 시작 -->
        <c:if test="${boardList eq null}">
        	<!-- <p>게시글이 존재하지 않습니다.</p> -->
        	<script>alert('hi')</script>
        </c:if>
        <c:if test="${boardList ne null}">
	        <c:forEach var="boardAll" items="${boardList}">
	        <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
	          <img src="../images/test1.jpg" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
	          <span class="w3-right w3-opacity">${boardAll.wdate}</span>
	          <h4>${boardAll.author}</h4><br>
	          <hr class="w3-clear">
	          <p>${boardAll.title}</p>
	          <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
	          <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
	        </div>
	        </c:forEach>
	    </c:if>
        <!-- 반복문 끝 -->
    </body>
    <!-- Input Your JSP Code End-->
<!--  foot -->
<jsp:include page="./foot.jsp" />
<!--  foot -->