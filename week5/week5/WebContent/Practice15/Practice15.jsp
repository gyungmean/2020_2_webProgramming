<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Calendar</title>
</head>
<body>
<%@ page import="java.util.Calendar" %>
<%
	Calendar cal = Calendar.getInstance();
	int year = 2016;
	int month = 11;
	
	out.println("<h1>" + year + "년 " + month + "월</h1>");
	out.println("<hr>");
	
	cal.set(year, month - 1, 1);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	
	int day_count = 0;
	for(int i = 1; i < day; i++){
		out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		day_count++;
	}
	
	for(int i = 1; i <= cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++){
		if(day_count % 7 == 0){
			out.println("<br>");
		}
		out.println(i + "&nbsp;&nbsp;&nbsp;");
		day_count++;
	}
%>
</body>
</html>