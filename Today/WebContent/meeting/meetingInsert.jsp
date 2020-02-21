<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String myctx = request.getContextPath();%>
<!--  top -->
<jsp:include page="/top.jsp" />
<!--  top -->
<script>
//유효성 검사
	$(function(){
		$('#btnInsert').click(function(e){
			e.preventDefault();
			var category=$('#category>option:selected').val();
			if(!category){
				alert('관심분야를 선택해주세요.');
				$('#category').focus();
				return;
			}
			var meetingName=$('#meetName').val();
			if(!meetingName){
				alert('모임명을 작성해 주세요.');
				return;
			}
			var leader=$('#leader').val();
			if(!leader){
				alert('모임장의 닉네임을 작성해 주세요.');
				$('leader').focus();
				return;
			}
			var hp1=$('#hp1').val();
			var hp2=$('#hp2').val();
			var hp3=$('#hp3').val();
 			if(!hp1||!hp2||!hp3){
 				alert('연락처를 작성해 주세요.');
 				return;
 			}
			var pwd=$('#meetpwd').val();
			if(!pwd){
				alert('비밀번호를 작성해 주세요.');
				return;
			}
			$('#mf').submit();
		})
	});
	function move(){
		location.href='meetingList.do';
	}
</script>
<!-- 주소 검색 API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" ></script>
<script>
    function pSearch() {
        new daum.Postcode({
            oncomplete: function(data) {
            	var roadAddr = data.roadAddress; // 도로명 주소 변수
                $('#place').val(roadAddr);
            }
        }).open();
    }
</script>
    <!-- Input Your JSP Code Start-->
	<h1 align="center">소모임 등록</h1>
		<form class="form-horizontal" role="form" id="mf" action="meetingInsert.do" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="inputEmail3" class="control-label">관심분야</label>
                </div>
                <div class="col-sm-6">
                  <select class="form-control" name="category" id="category">
                    <option value="">========== 모집 분야 ==========</option>
                    <option value="book">독서/토론</option>
                    <option value="outdoor">아웃도어/운동</option>
                    <option value="study">공부</option>
                    <option value="culture">예술/대중문화</option>
                    <option value="language">어학</option>
                    <option value="computer">전자/컴퓨터</option>
                    <option value="health">건강/의학</option>
                    <option value="history">역사/문화</option>
                    <option value="productions">수집/제작</option>
                    <option value="music">음악/연주</option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label class="control-label">모임명</label>
                </div>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="meetName" name="meetName">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="inputEmail3" class="control-label">모임 관련 사진</label>
                </div>
                <div class="col-sm-6">
                  <input type="file" id="image" name="image">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="inputEmail3" class="control-label">모임내용</label>
                </div>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="meetContent" name="meetContent">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="inputEmail3" class="control-label">모임날짜</label>
                </div>
                <div class="col-sm-3">
                  <input type="date" class="form-control" id="mdate" name="mdate">
                </div>
                <div class="col-sm-3">
                  <input type="text" class="form-control" id="mtime" name="mtime">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="text" class="control-label">모집인원</label>
                </div>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="personnel" name="personnel" placeholder="최소 2명 ~ 최대 999명">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="text" class="control-label">모임장</label>
                </div>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="leader" name="leader" value="${loginUser.nick_name}" readonly>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="text" class="control-label">연락처</label>
                </div>
                <div class="col-sm-2">
                  <input type="text" class="form-control" id="hp1" name="hp1" placeholder="000">
                </div>
                <div class="col-sm-2">
                  <input type="text" class="form-control" id="hp2" name="hp2" placeholder="0000">
                </div>
                <div class="col-sm-2">
                  <input type="text" class="form-control" id="hp3" name="hp3" placeholder="0000">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="text" class="control-label">장소</label>
                </div>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="place" name="place" placeholder="">
                </div>
                <div class="col-sm-2">
                 <button type="button" class="btn btn-primary" id="btnSearch" name="place" onclick="pSearch()">찾기</button>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-3">
                  <label for="inputPassword3" class="control-label">비밀번호</label>
                </div>
                <div class="col-sm-6">
                  <input type="password" class="form-control" id="meetpwd" name="meetpwd" placeholder="">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-9">
                  <button type="button" class="btn btn-default" id="btnList" onclick="move()">목록으로</button>
                  <button type="submit" class="btn btn-primary" id="btnInsert" onclick="meetInsert()">등록하기</button>
                </div>
              </div>
            </form>

    <!-- Input Your JSP Code End-->
<!--  foot -->
<jsp:include page="/foot.jsp" />
<!--  foot -->