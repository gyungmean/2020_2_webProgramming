<%--컴퓨터학과 20190941 김경민 --%>
<%-- 최적 실행화면 : Chrome browser --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 20</title>
</head>
<body>
<%@ page import = "java.util.Enumeration" %>
<%
	out.println("<h2>전달된 파라미터 이름들</h2>");
	Enumeration<String> e = request.getParameterNames();
	while ( e.hasMoreElements() ){
		String name = e.nextElement();
		out.println(name + "<br>");
	}
	out.println("<hr>");
	
	out.println("타입 : " + request.getParameter("type") + "<br>");
	out.println("아이디 : " + request.getParameter("strID") + "<br>");
	out.println("패스워드 : " + request.getParameter("strPwd") + "<br>");
	

%>
</body>
</html>