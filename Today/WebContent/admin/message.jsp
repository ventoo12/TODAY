<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl 의 core 태그 라이브러리를 이용해서 제어문을 사용해보자. -->
<c:if test="${msg !=null }"><!-- 메시지가 있으면 알람창 보여주고 이동 -->
	<script>
		alert('${msg}');
		location.href='${loc}';
	</script>
</c:if>
<c:if test="${msg ==null}"><!-- msg가 없으면 페이지만 이동 -->
	<script>
		location.href='${loc}';
	</script>
</c:if>