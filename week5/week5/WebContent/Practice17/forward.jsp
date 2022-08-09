<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>forward action</title>
</head>
<body>
<jsp:forward page="greeting.jsp">
	<jsp:param name="name" value="Dongduck University" />
	<jsp:param name="date" value="2011/04/05" />
</jsp:forward>
</body>
</html>