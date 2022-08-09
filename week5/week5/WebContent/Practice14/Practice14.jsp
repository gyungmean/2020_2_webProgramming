<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Practice 14</title>
</head>
<body>
<%@ page import="java.util.Calendar" %>
<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	String s_day = "";
	
	switch(day){
	case 1:
		s_day = "일요일";
		break;
	case 2:
		s_day = "월요일";
		break;
	case 3:
		s_day = "화요일";
		break;
	case 4:
		s_day = "수요일";
		break;
	case 5:
		s_day = "목요일";
		break;
	case 6:
		s_day = "금요일";
		break;
	case 7:
		s_day = "토요일";
		break;
	}
	
	out.println("오늘은 " + year + "년 " + (month + 1) + "월 " + date + "일 " + s_day + "입니다.<br>");
	
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	out.println("<br>이번 달은 " + start + "일부터 시작하여 " + end + "일에 끝납니다.<br>");
	
	cal.set(1999, Calendar.JULY, 28);
	
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH);
	date = cal.get(Calendar.DATE);
	day = cal.get(Calendar.DAY_OF_WEEK);
	
	switch(day){
	case 1:
		s_day = "일요일";
		break;
	case 2:
		s_day = "월요일";
		break;
	case 3:
		s_day = "화요일";
		break;
	case 4:
		s_day = "수요일";
		break;
	case 5:
		s_day = "목요일";
		break;
	case 6:
		s_day = "금요일";
		break;
	case 7:
		s_day = "토요일";
		break;
	}
	out.println("<br>내 생일 " + year + "년 " + (month + 1) + "월 " + date + "일은 " + s_day + "입니다.<br>");
%>
</body>
</html>