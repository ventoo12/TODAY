<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="/top.jsp"/>

<!DOCTYPE html>

<script>

$(function() {
	
	$('#btnWrite').click(function() {
		
		if (!$('#file').val()) {
			alert('파일을 선택해주세요');
			$('#file').focus();
			return;
		}

		$('#bf').submit();
	});
});


</script>

<div class="container">


<div class="col-md-8">
	
	<h1>업로드할 사진을 선택하세요</h1>
	
	<form name="bf" id="bf" role="form" action="today.do" method="POST" enctype="multipart/form-data">
			
 		<table class="table table-bordered">
 		
 	
		<tr>
			<td style="width: 20%"><b>첨부파일</b></td>
			<td style="width: 80%">
			<input type="file" name="file" id="file" class="form-control"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<button type="button" id="btnWrite" class="btn btn-success">확인</button>
				<button type="reset" id="btnReset" class="btn btn-warning">취소</button>
			</td>
		</tr>
	
		</table>
	
	</form>	    

</div>

</div>

<jsp:include page="/foot.jsp"/>


