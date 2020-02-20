<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ȭ ����</title>
<link href="css/shopping.css" rel="stylesheet">
</head>
<body>
<div id="wrap" align="center">
<h1>����Ʈ</h1>
<table class="list">
   <tr>
     <td colspan="6" style="border: white; text-align: right"> 
       <a href="moviewrite.do" >�������</a>      
     </td> 
   </tr> 
   <tr><th>����</th><th>����</th><th>���</th><th>����</th><th>����</th><th>����</th></tr>
   <c:forEach items="${mlist}" var="movie">
   <tr class="record">
     <td>${movie.title }</td>
     <td>${movie.director }</td>
     <td>${movie.actor }</td>
     <td style="text-align: right; ">${movie.price } ��</td>
     <td>
       <a href="movieupdate.do?code=${movie.code }">���� ����</a>
     </td>
     <td>
       <a href="moviedelete.do?code=${movie.code }">���� ����</a>
    </td>
   </tr>
   </c:forEach>
</table>
</div>
</body>
</html>