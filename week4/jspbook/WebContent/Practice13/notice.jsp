<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Eclipse built-in --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 메세지</title>
<style>
			td{
				text-align: center;
			}
			td.title{
				width: 600px;
			}
			td.color{
				width: 400px;
				background-color: #FFDAB9;
				height: 40px;
			}
			td.image{
				width: 400px;
				background-color:#FFEFD5;
				height: 350px;
			}
</style>
</head>
<body>
	<div align="center">
		<table>
			<tr>
				<td class="title"><img src="image/eclass_title.jpg"></td>
			</tr>
			<tr>
				<td class="color">
					<strong>오류가 발생했습니다</strong>
				</td>
			</tr>
			<tr>
				<td class="image">
					<img src="image/flower.gif">
					<br><br><strong>오류 발생시간 : <%= new java.util.Date() %></strong>
					<br><br><strong>최대한 빨리 조치하겠습니다.</strong>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>