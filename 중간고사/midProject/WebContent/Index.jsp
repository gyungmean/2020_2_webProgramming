<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<style>
* {
	background-color: #f5f5f5;
}

div {
	background-color: white;
	display: table;
	width: 500px;
	margin-top: 30px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 15px;
	padding-top: 30px;
	padding-left: 15px;
	padding-right: 15px;
	padding-bottom: 100px;
}

h1, h2 {
	text-align: center;
}

h1, h2, hr, ul {
	background-color: white
}

button {
	width: 70px;
	height: 25px;
	margin-left: 10px;
	margin-right: 10px;
	float: right;
	border: 1px solid gray;
}

ul {
	list-style: none;
	margin-top: 70px;
	padding-right: 15px;
}

li {
	background-color: white;
	padding-top: 35px;
	padding-bottom: 35px;
	border-bottom: 1px solid gray;
}
</style>
</head>
<body>
	<div>
		<h2>웹프로그래밍 프로젝트(1-16조)</h2>
		<hr>
		<h1>Index</h1>
		<ul>
			<li>Problem_01: 주소록
				<button type=button
					onclick="location.href='Problem_01/addr_list.jsp'">link</button>
			</li>
			<li>Problem_02: 달력
				<button type=button
					onclick="location.href='Problem_02/calendar.jsp'">link</button>
			</li>
			<li>Problem_03: 시간표
				<button type=button
					onclick="location.href='Problem_03/Problem_03.jsp'">link</button>
			</li>
		</ul>
	</div>
</body>
</html>