<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ȭ ���</title>
<link href="css/shopping.css" rel="stylesheet">
</head>
<body>
<div id="wrap" align="center">
<h1>���� ���</h1>
<form enctype="multipart/form-data" method="post" name="frm"> 
   <table>
      <tr>
         <th> ��  �� </th>
         <td><input type="text" name="mtitle" size="60"></td>
      </tr> 
      <tr>
        <th> ��  ��  </th>
        <td><input type="text" name="price"  size="60"> ��</td>
      </tr>
      <tr>
        <th> ��  ��  </th>
        <td><input type="text" name="director" size="60"></td>
      </tr>
      <tr>
        <th> ��  ��  </th>
        <td><input type="text" name="actor" size="60"></td>
      </tr>
      <tr>
         <th> ��  �� </th> 
         <td><textarea cols="70" rows="10" name="synopsis"></textarea></td>
      </tr>
      <tr>
         <th> �� ��</th>
         <td>
            <input type="file" name="poster" ><br>
        </td>
      </tr>  
   </table>
   <br>
   <input type="submit" value="Ȯ��"  onclick="return productCheck()">
   <input type="reset" value="���">
   <input type="button" value="���" onclick="location.href='movielist.do'" >
</form>
</div>
</body>
</html>