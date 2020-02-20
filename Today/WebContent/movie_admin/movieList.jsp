<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="/movie/top.jsp"/>
<div class="container">
	<h1>Movie List -[Admin]</h1>
	<%-- ${plist} --%>
	<table class="table table-striped">
		<thead>
			<tr class="success">
				<th>상품번호</th>
				<th>상품명</th>
				<th>정가/판매가</th>
				<th>제조사</th>
				<th>수량</th>
				<th>입고일</th>				
			</tr>	
		</thead>
		<tbody>
			<c:forEach var="pd" items="${plist}">
			<tr>
				<td>
				${pd.pnum}<br>
				<label class="label label-warning">${pd.pspec}</label>
				</td>
				<td>
				<img src="../product_images/${pd.pimage1}" class="img img-thumbnail" style="width:100px;">
				<br>
				${pd.pname}
				</td>
				<td>
					정  가: <del><fmt:formatNumber value="${pd.price}" pattern="###,###"/></del><br>
					판매가: <b><fmt:formatNumber value="${pd.saleprice}" pattern="###,###"/></b><br>
					할인율: <label class="label label-danger">${pd.percent}%</label><br>
					포인트: <label class="label label-success">${pd.point} Point</label>
					
				</td>
				<td>${pd.pcompany}</td>
				<td>${pd.pqty}개</td>
				<td>${pd.pindate}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<jsp:include page="/movie/foot.jsp"/>