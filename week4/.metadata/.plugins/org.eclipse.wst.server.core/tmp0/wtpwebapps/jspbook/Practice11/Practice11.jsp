<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 11</title>
<style>
	table {
	    width: 550px;
	    height: 400px;
	    border: 1px solid black;
  	}
  	th, td {
    	border: 1px solid black;
    	padding: 10px;
  	}
</style>
</head>
<body>
<%
	out.println("<div align=\"center\">");
	out.println("<h1>구구단 출력</h1>");
	out.println("<hr>");
	out.println("<table>");
	out.println("<tr>");
		for(int i = 2; i <= 5; i++){
			out.println("<td>");
			for(int j = 1; j <= 9; j++){
				out.println(i + " * " + j + " = " + (i * j) + "<br>");
			}
			out.println("</td>");
		}
	out.println("</tr>");
		for(int i = 6; i <= 9; i++){
			out.println("<td>");
			for(int j = 1; j <= 9; j++){
				out.println(i + " * " + j + " = " + (i * j) + "<br>");
			}
			out.println("</td>");
		}
	out.println("<tr>");
	
	out.println("</tr>");
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>