<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Chrome browser --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 04</title>
</head>
<body>
<%@ page import = "java.util.Enumeration" %>
<%
out.println(request.getParameter("src") + "에서 전달된 내용입니다.");
out.println("<br>page_control_04.jsp에서 출력합니다.");
out.println("<hr>");
out.println("념겨받은 파라미터들<br>");
Enumeration<String> e = request.getParameterNames();
while(e.hasMoreElements()){
	String s = e.nextElement();
	out.println(s + " : " + request.getParameter(s) + "<br>");
}
out.println("<hr>안녕하세요, " + request.getParameter("username") + "님, 반갑습니다.<hr>");
%>
</body>
</html>