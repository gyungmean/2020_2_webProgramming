<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>calendar.jsp</title>
<style>
	table.cal {
		width: 700px;
	    height: 300px;
	    border: 1px solid black;
	    border-collapse: collapse;
  	}
  	table.date{
  		width: 700px;
  	}
  	tr.cal, td.cal {
    	border: 1px solid black;
    	text-align: center;
    	font-weight: bold;
  	}
  	tr.date, td.date {
    	text-align: right;
  	}
</style>
</head>
<body>
<%@ page import="java.util.Calendar" %>
<%!
	public String parseDay(int cnt, String day){
		if(cnt == 7){
			return "<font color=\"blue\">" + day + "</font>";
		}
		else if(cnt == 1){
			return "<font color=\"red\">" + day + "</font>";
		}
		return day;
	}
%>
<%
	Calendar today = Calendar.getInstance();

	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH) + 1;
	Calendar cal = Calendar.getInstance();;
	cal.set(year, month - 1, 1);
	int date = today.get(Calendar.DATE);
	out.println("<div align=\"center\">");
	out.println("<table class=\"date\">");
	out.println("<tr class=\"date\">");
	out.println("<td class=\"date\"><h3>" + year + "-" + month + "-" + date + "</h3></td>");
	out.println("</tr>");
	out.println("</table>");
	
	cal.set(year, month - 1, 1);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int day_count = 0;
	String[] day_word = {"일", "월" , "화", "수", "목", "금", "토"};
	
	out.println("<table class=\"cal\">");
	out.println("<tr class=\"cal\">");
		for(int i = 1; i <= 7; i++){
			out.println("<td class=\"cal\">" + parseDay(i, day_word[i - 1]) + "</td>");
		}
	out.println("</tr>");
	out.println("<tr class=\"cal\">");
		for(int i = 1; i < day; i++){
			out.println("<td class=\"cal\">&nbsp;</td>");
			day_count++;
		}
		for(int i = 1; i <= cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++){
			if(day_count % 7 == 0){
				out.println("</tr>");
				out.println("<tr class=\"cal\">");
			}
			out.println("<td class=\"cal\">"+ parseDay(day_count % 7 + 1 , Integer.toString(i)) + "</td>");
			day_count++;
		}
		if(day_count % 7 != 0){
			for(int i = day_count % 7; i < 7; i++){
				out.println("<td class=\"cal\">&nbsp;</td>");
				day_count++;
			}
		}
	out.println("</tr>");
	out.println("</table>");
	out.println("</div>");
	
%>
</body>
</html>