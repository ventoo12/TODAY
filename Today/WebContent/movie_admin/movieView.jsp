<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/movie/top.jsp" />
<!-- 이미지 확대 라이브러리 참조 ---------------------------------------------- -->
<script type="text/javascript" src="js/jquery.magnifier.js"></script>
<!-- -------------------------------------------------------------------- -->
<div align="center" id="movie">
<h1>상품 정보</h1>
<c:if test="${pd eq null}">
	<h3>존재하지 않는 상품이에요</h3>
</c:if>
<c:if test="${pd ne null}">		
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<table class="table table-responsive">
					<tr>
						<td align="center" style="width:50%">
				  	<%--  <a href="#shop" 
						onclick="openWin('${pd.pimage1}')">  --%>
						<img src="product_images/${pd.pimage1}" 
						class="img img-responsive magnify"
						data-magnifyby="1.5">
						<!-- </a>  -->
						</td>
						<td>
						<h4><span class="label label-danger">
						${pd.pspec}</span></h4>
						상품번호 : <b>${pd.pnum}</b> <br>
						상품이름 : <b>${pd.pname}</b> <br>
						정    가 : <del><b>
						<fmt:formatNumber value="${pd.price}" pattern="###,###"/>
						</b></del> 원<br>
						판 매 가 : <span style="color:red"><b>
						<fmt:formatNumber value="${pd.saleprice}" pattern="###,###"/>
						</b></span>원<br>
						할 인 율 : <span style="color:blue">
						<b>${pd.percent} %</b></span><br>
						POINT    : 
					<span class="label label-success">
					${pd.point} Point</span>
					<p></p>
					<!--form 시작---------------  -->
					<form name="frm" id="frm" method="post">
					<!-- 상품번호를 hidden으로 넘겨야 함(장바구니,주문처리시 필요) -->					 
					<input type="hidden" name="pnum" value="${pd.pnum}">
					<!-- ---------------------------------------------- -->
					<label for="oqty">상품 갯수</label>
					<input type="number" name="oqty" id="oqty"
					min="1" max="50" value="1">					
					</form>
					<!-- form 끝----------------- -->
					<button class="btn btn-primary"
					 onclick="goCart()">장바구니</button>
					<button class="btn btn-warning"
					onclick="goOrder()">주문하기</button>
					<button class="btn btn-success"
					onclick="goWish()">위시리스트</button>
						</td>
					</tr>
					<tr>
						<td align="center">
		<img src="product_images/${pd.pimage2}" class="img img-responsive">
						</td>
						<td align="center">
		<img src="product_images/${pd.pimage3}" class="img img-responsive">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<p>상품설명</p>
							<pre>${pd.pcontent}</pre>						
						</td>
					</tr>
				</table>
			</div>
		</div>
	</c:if>		

</div><!--container end  -->
<script type="text/javascript">
	/*팝업창으로 상세 이미지를 보여주는 함수*/
	openWin=function(img){
		//alert(img);
		var url="product_images/"+img;
		var imgObj=new Image();
		imgObj.src=url;
		var w=imgObj.width+100;
		var h=imgObj.height+100;
		
		window.open(url, 'imgView','width='+w+',height='+h+', top=100, left=100');
		
	}
	goCart=function(){
		frm.action="member/cartAdd.do"; //폼 이름으로 접근할 경우
		frm.submit();		
		//$('#frm').attr("action","member/cartAdd.do");
		//$('#frm').submit();
		
	}
	goOrder=function(){
		frm.action="member/orderSheet.do"; //폼 이름으로 접근할 경우
		frm.submit();
		//$('#frm').attr("action","member/orderSheet.do");
		//$('#frm').submit();		
	}
	goWish=function(){
		$('#frm').attr("action","member/wish.do");
		$('#frm').submit();
	}
	
</script>

<jsp:include page="/movie/foot.jsp"/>
