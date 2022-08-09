<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 09</title>
</head>
<body>
<%
	String s = "Hello, Welcome to JSP World! Let\'s go!";
	out.println("입력되어 있는 문자열: " + s + "<br>");
	out.println("문자열의 길이: " + s.length() + "<br>");
	String t = "JSP";
	out.println("\'" + t + "\'" + "라는 문자의 위치:" + s.indexOf(t) + "<br>");
	out.println("모두 소문자로 변경: " + s.toLowerCase() + "<br>");
	out.println("모두 소문자로 변경: " + s.toUpperCase());
%>
</body>
</html>