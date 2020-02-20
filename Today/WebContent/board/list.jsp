<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%-- 로그인 여부를 체크하는 모듈을 inlcude(소스를 포함시키는 방식으로) --%>
<!-- --------------------------------------------------- -->
<%@ include file="./detail.jsp" %> 
<!-- --------------------------------------------------- -->
    
<jsp:include page="/top.jsp"/>

<%	
	String ctx = request.getContextPath();	
	int count = 0;

%>
<style>
	.box img:hover {
		transform:scale(1.5);		/*이미지 확대*/
		transition:transform.3s;	/*시간 설정*/
	}
	table{
		border-spacing:3px;
		border-collapse:separate;
	}
	#show_img{
		width:50px;
		height:50px;
		margin:'1px';
	}
</style>

<div class="container">

<%-- ${boardlist} --%>

<div class="col-md-8">
<h3 text-align="center"> ${id} 님의 게시물 수 : ${total}</h3>

	<c:if test="${boardlist == null || empty boardlist }">
		<tr>
			<td colspan="5" text-align="center"><b>게시글이 없습니다.</b></td>
		</tr>
	</c:if>
	
	<table>
		<tr>
			<c:forEach var="list" items="${boardlist}" varStatus="state">
				<td id="show_img">
					<div class="box">
						<a href="#detail" data-toggle="modal" onclick="send(${list.boardnum})">
							<img src="./Upload_small/${list.addr}">
			</a>
					</div>
				</td>
				<c:if test="${(state.count%4) eq 0}"></tr><tr></c:if>
			</c:forEach>
		</tr>	
	</table>
	<hr color='red'>
</div>
</div>

<script>
	function send(i){
		//alert(i)
		//document.getElementById('#reply').value = null;		//이전에 작성되어 있던 댓글 지우기
		//이전에 입력한 댓글 값 지우기
		//$('#reply').html('');
		//$('#form_id input[type="text"]').val(""); 
		$('#reply').val('');
		//이전에 작성되어 있던 댓글 지워주기
		
		$.ajax({
			type:'GET',
			url:"detail.do?boardnum="+i,
			dataType:'json',		//응답유형 json
			cache:false,
			success:function(res){
			//alert(res.title);	: json객체를 문자열로 나열해서 보여줌(직렬화)
			//JSON.parse(문자열) : 문자열을 파싱하여 JSON객체로 만들어줌
			//console.log(JSON.stringify(res));
			//showData(res);
			//alert(res.content);
			$('#content').html(res.content);	//div의 경우
			$('#content2').val(res.content);	//input의 경우
			$('#boardnum').html(res.boardnum);
			$('#boardnum2').val(res.boardnum);
			//alert(JSON.stringify(parseInt(res.wdate.year)+1900));
			var time="업로드 날짜 : "
			+JSON.stringify(parseInt(res.wdate.year)+1900)+"년 "
			+JSON.stringify(parseInt(res.wdate.month)+1)+"월 "
			+JSON.stringify(parseInt(res.wdate.date))+"일 "
			+JSON.stringify(parseInt(res.wdate.hours))+"시 "
			+JSON.stringify(parseInt(res.wdate.minutes))+"분 "
			+JSON.stringify(parseInt(res.wdate.seconds))+"초 ";
			//alert(time);
			$('#time').html(time);
			//alert(res.boardnum);
			//$('#reply').html(res.content);
			$('#author').html(res.author);
			$('#bimg').attr('src','Upload_small/'+res.addr);
			$('#bimg2').val('Upload_small/'+res.addr);
			showReply(res.replyList); 
			},
			error:function(e){
				alert('error:'+e.status);
			}
		})
	}//send()----------------------------------------------------------------------------
	
	function showReply(replyList){
		$('#re').html('');

		$.each(replyList, function(index, item){
			// $.each(obj, function(index, item){ }) 
			// 객체(obj)를 전달받으면 index는 객체의 key(property)를 가리키고
			// item은 키의 값을 가져온다.
			
			//alert('reply가 제대로 들어오나요 ?');
			//alert(index);
			//alert(item.content);
			
			//alert(JSON.stringify(item.wdate));
			
			var time=JSON.stringify(parseInt(item.wdate.year)+1900)+"/"
			+JSON.stringify(parseInt(item.wdate.month)+1)+"/"
			+JSON.stringify(parseInt(item.wdate.date))+" "
			+JSON.stringify(parseInt(item.wdate.hours))+":"
			+JSON.stringify(parseInt(item.wdate.minutes))+":"
			+JSON.stringify(parseInt(item.wdate.seconds));
	
			var str = "<div>"+item.author+" | "+item.content
					+"<br>"+time
					+"<a href='<%=ctx%>/delete_reply.do?reply_number="+item.reply_num+"'> 삭제</div>";
																			 
			//var str = "<div>작성자 : "+item.author+" | 내용 : "+item.content+"<a href='#' onclick="send_reply(${item.reply_num})"> 삭제</div>";
			//var str = "작성자 : "+item.author+" | 내용 : "+item.content+"<br>";
			$('#re').append(str);

		})
		
	}//showReply()------------------------------------------------------------------------------
</script>


<jsp:include page="/foot.jsp"/>