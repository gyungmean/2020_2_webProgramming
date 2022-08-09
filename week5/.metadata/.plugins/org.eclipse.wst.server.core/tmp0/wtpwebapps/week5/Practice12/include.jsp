<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 12</title>
<style>
  	th, td {
    	text-align: center;
  	}
</style>
</head>
<body>
<div align="center">
<h2>include 지시어 연습</h2>
<hr>
<table>
	<tr>
		<td><%@include file="calendar.jsp" %></td>
		<td>&nbsp;</td>
		<td><%@include file="news.jsp" %></td>
	</tr>
</table>
</div>
</body>
</html>