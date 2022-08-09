<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 10</title>
<style>
	table {
	    width: 600px;
	    height: 200px;
	    border: 1px solid black;
  	}
  	th, td {
    	border: 1px solid black;
    	text-align: center;
    	font-weight: bold;
  	}
</style>
</head>
<body>
<%
	out.println("<div align=\"center\">");
	out.println("<table>");
	
	String[] day = {"일", "월", "화", "수", "목", "금", "토"};
	
	for(int i = 0; i < 5; i++){
		out.println("<tr>");
		if(i == 0){
			for(int j = 0; j < 7; j++){
				if(day[j] == "일")
					out.println("<td><font color=\"red\">" + day[j] + "</font></td>");
				else if(day[j] == "토"){
					out.println("<td><font color=\"blue\">" + day[j] + "</font></td>");
				}
				else{
					out.println("<td>" + day[j] + "</td>");
				}
			}
		}
		else{
			for(int j = 0; j < 7; j++){
				out.println("<td>&nbsp;</td>");
			}
		}
		out.println("</tr>");
	}
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>