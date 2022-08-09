<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="week12.Practice32.*"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="week12.Practice32.AddrBean" />
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="week12.Practice32.AddrManger" scope="application"/>
<%
am.add(addr);
%>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름 : <jsp:getProperty property="username" name="addr"/><p>
전화번호 : <jsp:getProperty property="tel" name="addr"/><p>
이메일 : <%=addr.getEmail() %><p>
성별 : <%=addr.getSex() %><p>
그룹 : <%=addr.getGroup() %>
<hr>
<a href="addr_list.jsp">전체 목록 보기</a>&nbsp;&nbsp;<a href="addr_list_group.jsp">그룹별 목록 보기</a>
</div>
</body>
</html>