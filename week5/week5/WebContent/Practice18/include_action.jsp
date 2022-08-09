<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Practice 18</title>
<style>
	table{
		width: 600px;
	}
</style>
</head>
<body>
<div align="center">
	<h1>Include Action Practice</h1>
	<br><br>
	<table>
		<tr>
			<td><jsp:include page="calendar.jsp" /></td>
			<td>&nbsp;</td>
			<td><jsp:include page="news.jsp" /></td>
		</tr>
	</table>
</div>
</body>
</html>