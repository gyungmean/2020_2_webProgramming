<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
<head>
<title>greeting message</title>
</head>
<body>
<h3>greetiong.jsp에서 출력한 메세지 입니다.</h3><br>
<%= request.getParameter("name") %>님 환영합니다.<br>
오늘은 <%= request.getParameter("date") %>입니다.
</body>
</HTML>