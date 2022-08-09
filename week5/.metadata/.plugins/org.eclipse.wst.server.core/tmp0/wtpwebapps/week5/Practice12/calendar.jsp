<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table.cal {
		width: 270px;
	    height: 200px;
	    border: 1px solid black;
	    border-collapse: collapse;
  	}
  	th.cal, td.cal {
    	border: 1px solid black;
    	text-align: center;
    	font-weight: bold;
  	}
</style>
</head>
<body>
<%
	out.println("<div align=\"center\">");
	out.println("<table class=\"cal\">");
	out.println("<tr class=\"cal\">");
		out.println("<td class=\"cal\"><font color=\"red\">일</font></td>");
		out.println("<td class=\"cal\">월</td>");
		out.println("<td class=\"cal\">화</td>");
		out.println("<td class=\"cal\">수</td>");
		out.println("<td class=\"cal\">목</td>");
		out.println("<td class=\"cal\">금</td>");
		out.println("<td class=\"cal\"><font color=\"blue\">토</font></td>");
	out.println("</tr>");
	for(int i = 0; i < 4; i++){
		out.println("<tr class=\"cal\">");
		for(int j = 0; j < 7; j++){
			out.println("<td class=\"cal\">&nbsp;</td>");
		}
		out.println("</tr>");
	}
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>