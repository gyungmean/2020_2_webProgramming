<%--��ǻ���а� 20190941 ���� --%>
<%--���� ����ȭ�� : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 09</title>
</head>
<body>
<%
	String s = "Hello, Welcome to JSP World! Let\'s go!";
	out.println("�ԷµǾ� �ִ� ���ڿ�: " + s + "<br>");
	out.println("���ڿ��� ����: " + s.length() + "<br>");
	String t = "JSP";
	out.println("\'" + t + "\'" + "��� ������ ��ġ:" + s.indexOf(t) + "<br>");
	out.println("��� �ҹ��ڷ� ����: " + s.toLowerCase() + "<br>");
	out.println("��� �ҹ��ڷ� ����: " + s.toUpperCase());
%>
</body>
</html>