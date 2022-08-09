<%-- 컴퓨터 20191013 전수민 
	Internet explorer --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<%!
	//요일 색깔
	public String parseDay(int cnt, String day){
		String rslt = null;
		if(cnt % 7 == 6){//토
			rslt = "<font color = \"blue\">" + day + "</font>";
		}
		else if(cnt % 7 == 0){//일
			rslt = "<font color = \"red\">" + day + "</font>";
		}
		else{
			rslt = day;
		}
		return rslt;
	}
	
	//날짜 색깔
	public String colorDay(int cnt, int realDay){
		String rslt = null;
		if(cnt % 7 == 6){//토
			rslt = "<font color = \"blue\">" + realDay + "</font>";
		}
		else if(cnt % 7 == 0){//일
			rslt = "<font color = \"red\">" + realDay + "</font>";
		}
		else{
			rslt = Integer.toString(realDay);
		}
		return rslt;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
table{
	border: 1px solid gray;
	margin: auto;
	border-collapse: collapse;
	text-align: center;
	width: 800px;
	height: 90%;
}
th, td{
	border: 1px solid gray;
	font-size: 18px;
	padding: 7px;
}
#front{
	margin-bottom: 15px;
	border: 0px; 
	font-size: 16px;
	font-weight: bold;
}
</style>
</head>
<body>
<%
	out.print("<form method= get>");
	String sYear = request.getParameter("YEAR");
	String sMonth = request.getParameter("MONTH");
	
	Calendar today = Calendar.getInstance();//today's date
	
	int year, month;
	int todayyear = today.get(Calendar.YEAR);
	int todaymonth = today.get(Calendar.MONTH);
	int todaydate = today.get(Calendar.DATE);
	
	Calendar cal = Calendar.getInstance(); //calendar date
	
	if(sYear != null && sMonth != null){//request받아온게 있으면
		year = Integer.parseInt(sYear);
		month = Integer.parseInt(sMonth);
		//1월부터 12월까지. idx상으로 0-11
		if(month < 0){
			month = 11; 
			year = year-1; 
		}
		if(month > 11){ 
			month = 0; 
			year = year+1;
		}
	}
	else{//받아온게 없음.첫호출
		year = todayyear;
		month = todaymonth;
	}
	cal.set(year, month, 1);
	
	//-------달력 윗부분---------//
	out.print("<table id = 'front'><tr>");
	out.print("<td align = left id = 'front'>");
	out.print("<a href = \"calendar.jsp?YEAR=" + (year-1));
	out.println("&MONTH=" + month + "\">" +  "◀</a>" );
	out.print(year + "년");
	out.print("<a href = \"calendar.jsp?YEAR=" + (year+1));
	out.println("&MONTH=" + month + "\">" +  "▶</a>" );
	out.print("</td>");
	
	out.print("<td align = center id = 'front'>");
	out.print("<a href = \"calendar.jsp?YEAR=" + year);
	out.println("&MONTH=" + (month-1) + "\">" +  "◀</a>" );
	out.print((month+1) + "월");
	out.print("<a href = \"calendar.jsp?YEAR=" + year);
	out.println("&MONTH=" + (month+1) + "\">" +  "▶</a>" );
	out.print("</td>");
	
	out.print("<td align= right id = 'front'>");
	out.print(todayyear + "- " + (todaymonth+1) + "-" + todaydate + "</td>");
	out.print("</tr></table>");
	
	//------달력만들기----------//
	out.print("<table>");
	
	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);//해당 월의 말일
	int startDay = cal.get(Calendar.DAY_OF_WEEK);//시작 날짜 요일
	int cnt = 0; //idx
	
	//요일 
	String[] weekand = {"일", "월", "화", "수", "목", "금", "토"};
	out.print("<tr>");
	for(int i = 0; i < weekand.length; i++){
		out.println("<th>" + parseDay(cnt, weekand[i]) + "</th>");
		cnt++;
	}
	out.print("</tr>");
	
	//빈칸출력
	for(int i = 0; i < (startDay-1); i++) {//시작날짜 요일-1까지 빈칸 출력 
	    out.println("<td>&nbsp;</td>");
	    cnt++;
	    if((cnt % 7) == 0) {//7의 배수마다 줄바꿈
	    	out.println("<tr>");
	    }
	   }
	   
	//날짜출력
	for(int i = 1; i <= endDay; i++) { //1일부터 말일까지 
		out.println("<td>" + colorDay(cnt, i) + "</td>");
	   	cnt++;
	    if((cnt % 7) == 0) {// 7의 배수이면 줄바꿈
	     	out.println("</tr><tr>");
	    }
	   }
	
	//말일 이후 빈칸출력
	while((cnt++)%7 != 0){//7의배수를 넘지 않는 선에서 빈칸 출력
		out.println("<td>&nbsp;</td>");
	}
	out.print("</tr>");
	
	out.print("</table>");	
	out.print("</form>");
%>
</body>
</html>