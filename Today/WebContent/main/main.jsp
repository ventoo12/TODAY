<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String myctx = request.getContextPath();%>
<!--  top -->
<jsp:include page="/top.jsp" />
<!--  top -->
<script type="text/javascript">
	$(function(){
		$('#btnBoardInput').click(function(e){
			e.preventDefault();
			if(!$('#content').val()){
				alert('글을 작성해 주세요.');
				$('#content').focus();
				return;
			}
			$('#mcf').submit();
		});
	});
</script>
    <!-- Input Your JSP Code Start-->
    <body>
    <div class="w3-row-padding">
          <div class="w3-col m12">
            <div class="w3-card w3-round w3-white">
              <div class="w3-container w3-padding">
                <h3 class="w3-opacity">한 줄 게시글</h3>
                <form name="mcf" id="mcf" action="mainInput.do" method="POST">
	                <input class="form-control input-lg" id="content" name="content" type="text">
	                <input type="hidden" id="author" name="author" value="${loginUser.nick_name}" >
	                <button type="button" class="w3-button w3-theme mt-1" id="btnBoardInput"><i class="fa fa-pencil"></i>  등록</button> 
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
	          <img src="images/${boardAll.addr}" alt="유저 프로필" class="w3-left w3-circle w3-margin-right" style="width:60px;">
	          <span class="w3-right w3-opacity">${boardAll.wdate}</span>
	          <h4><b>${boardAll.author}</b></h4><br>
	          <p class="text" style="margin-top:5px">${boardAll.title}</p>
	          <hr class="w3-clear">
	          <p>${boardAll.content}</p>
	          <img src="<%=myctx%>/Upload_small/${boardAll.addr}"  style="width:100px">
	          <hr class="w3-clear">
	          <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
	          <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
	        </div>
	        </c:forEach>
	    </c:if>
        <!-- 반복문 끝 -->
    </body>
    <!-- Input Your JSP Code End-->
<!--  foot -->
<jsp:include page="/foot.jsp" />
<!--  foot -->