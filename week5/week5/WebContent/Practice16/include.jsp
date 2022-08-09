<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>include action</title>
</head>
<body>
<div align="center">
	<h1>include 액션 연습</h1>
	<hr>
	<jsp:include page="greeting.jsp">
		<jsp:param name="name" value="Dongduck University" />
		<jsp:param name="date" value="2011/04/05" />
	</jsp:include>
</div>
</body>
</html>