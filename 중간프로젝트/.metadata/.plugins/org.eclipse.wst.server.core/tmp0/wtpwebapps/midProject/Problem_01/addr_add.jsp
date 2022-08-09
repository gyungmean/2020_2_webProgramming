<%@ page import="Problem01.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="Problem01.AddrBean" />
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="Problem01.AddrManager" scope="application"/>
<%
am.add(addr);
%>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름 : <jsp:getProperty property="username" name="addr"/><p>
전화번호 : <jsp:getProperty property="tel" name="addr"/><p>
이메일 : <jsp:getProperty property="email" name="addr"/><p>
성별 : <jsp:getProperty property="sex" name="addr"/><p>
그룹 : <jsp:getProperty property="group" name="addr"/>
<hr>
<a href="addr_list.jsp">전체 목록 보기</a>&nbsp;&nbsp;<a href="addr_list_group.jsp">그룹별 목록 보기</a>
</div>
</body>
</html>