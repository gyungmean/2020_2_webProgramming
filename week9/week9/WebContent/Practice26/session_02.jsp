<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Chrome browser --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object 02</title>
</head>
<body>
<%
	out.println(request.getParameter("username") + "님 환영합니다<br><br>");
	out.println("세션 ID : " + session.getId() + "<br>");
	out.println("세션 지속시간(default) : " + session.getMaxInactiveInterval() + "초<br><br>");
	out.println("<a href=\"session_03.jsp\" target=\"_blank\">sesson_03.jsp로 이동하기</a>");
%>
</body>
</html>