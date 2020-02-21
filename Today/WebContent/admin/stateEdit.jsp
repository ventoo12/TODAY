<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" import="admin.*"%>
<jsp:useBean id="member" class="admin.domain.MemberVO" scope="page"/>
<jsp:setProperty property="*" name="member"/>    
<jsp:useBean id="memberDao" class="admin.persistence.MemberDAO" scope="session"/>

<%--
	int n=memberDao.updateState(member);
--%>

<result>
<%--=n--%>
</result>