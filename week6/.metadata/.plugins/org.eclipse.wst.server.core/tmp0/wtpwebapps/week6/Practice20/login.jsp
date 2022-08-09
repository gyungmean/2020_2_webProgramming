<%--컴퓨터학과 20190941 김경민 --%>
<!-- 최적 실행화면 : Chrome browser -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>이클래스 로그인</title>
		<style>
			td.center{
				text-align: center;
			}
			td.right{
				text-align: right;
			}
		</style>
	</head>
	<body>
		<div align="center">
			<table>
				<tr>
					<td class="center"><img src="image/eclass_title.jpg"></td>
				</tr>
				<tr>
					<td class="center">
						<h1>로그인</h1>
					</td>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<td class="right"><img src="image/eclass_logo.png"></td>
					<td>
						<form name="frm1" method="post" action="result.jsp">
						<strong>회원님의 아이디와 비밀번호를 정확히 입력하세요.</strong>
						<br><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select name="type">
							<option value="학부생" selected>학부생</option>
							<option value="대학원생">대학원생</option>
							<option value="교직원">교직원</option>
						</select>
						<br><br>
						<strong>아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong> <input type="text" name="strID" size="25px" style="background-color: #FFFF99;">&nbsp;&nbsp;&nbsp;
						<br><br>
						<strong>비밀번호&nbsp;&nbsp; </strong> <input type="password" name="strPwd" size="25px" style="background-color: #FFFF99;">&nbsp;&nbsp;&nbsp;
						<br><br>
						<input type="submit" value="로그인"> <input type="button" value="가입하기" onclick="document.location='member2.html'">
						</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>