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
<h1>���� ����</h1>
<form method="post">
  <table>
    <tr>
     <td>
     <c:choose>
     	<c:when test="${empty movie.images}">
     		<img src="images/noimage.gif">
     	</c:when>
     	<c:otherwise>
     		<img src="images/${movie.images}" width="200" height="300">
     	</c:otherwise>
     </c:choose>
 	
     </td>
     <td>
       <table>
        <tr>
          <th style="width: 80px">��  ��</th>
          <td>${movie.title }</td>
        </tr>
        <tr>
           <th>�� ��</th>
           <td>${movie.price } ��</td>
        </tr>
        <tr>
           <th>�� ��</th>
           <td>${movie.director }</td>
        </tr> 
        <tr>
           <th>��  ��</th>
           <td>${movie.actor }</td>
        </tr>
        <tr>
           <th>�ó�ý�</th>
           <td><div style="height: 220px; width:100%">${movie.synopsis }</div></td>
        </tr>
        <tr>
        	<th>��  ��</th>
	        <td>
	        ${movie.poster }
	        </td>
        </tr>
      </table> 
	 </td>
    </tr>
  </table>	
  <br>
  <input type="hidden" name="code" value="${movie.code }">
  <input type="submit" value="����" >
  <input type="button" value="���" onclick="location.href='movielist.do'">
 </form> 
</div>
</body>
</html>