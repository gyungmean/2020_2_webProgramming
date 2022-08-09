<%@ page import="jspbook.pr03.*" import="java.util.*" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="lecture" class="jspbook.pr03.LectureBean"
	scope="request" />
<jsp:useBean id="lectureMan" class="jspbook.pr03.LectureManager"
	scope="session" />
<jsp:setProperty name="lecture" property="*" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시간표 작성</title>
<style>
* {
	text-align: center;
}

table, tr, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
table{
	margin: auto;
	margin-bottom: 30px;
}
th, td {
	height: 55px;
	width: 100px;
}

.left_column {
	font-weight: bold;
}

.전공필수 {
	background-color: #FFE08C;
}

.전공선택 {
	background-color: #B2CCFF;
}

.교양 {
	background-color: #BDBDBD;
}

.자유선택 {
	background-color: white;
}
</style>
</head>
<body>
	<div>
		<form method=post action="midterm_03.jsp">
			<%
				out.println("과목타입:");
				out.println("<select name=type>");
				for (int i = 0; i < LectureBean.typeNames.length; i++) {
					out.println("<option value=" + i + ">");
					out.println(LectureBean.typeNames[i]);
					out.println("</option>");
				}
				out.println("</select>");
				out.println("과목명:");
				out.println("<select name=title>");
				for (int i = 0; i < LectureBean.titleNames.length; i++) {
					out.println("<option value=" + i + ">");
					out.println(LectureBean.titleNames[i]);
					out.println("</option>");
				}
				out.println("</select>");
				out.println("요일:");
				out.println("<select name=day>");
				for (int i = 0; i < LectureBean.dayNames.length; i++) {
					out.println("<option value=" + i + ">");
					out.println(LectureBean.dayNames[i]);
					out.println("</option>");
				}
				out.println("</select>");
				out.println("시간:");
				out.println("<select name=time>");
				for (int i = 0; i < 6; i++) {
					out.println("<option value=" + i + ">");
					out.println(i + 1);
					out.println("</option>");
				}
				out.println("</select>");
				out.println("연강여부:");
				out.println("<select name=consecutive>");
				for (int i = 0; i < 4; i++) {
					out.println("<option value=" + i + ">");
					out.println(i + 1);
					out.println("</option>");
				}
				out.println("</select>");
			%>
			<input type=submit value="등록">
		</form>
		<hr>
		<%
			if (lecture.getType() != -1) {
				lectureMan.add(lecture);
			}
		%>
		<h3>강의 시간표</h3>
		<table>
			<tr>
				<th>2학년</th>
				<%
					lectureMan.buildMatrix();
					int num = 1;

					for (int i = 0; i < 5; i++) {
				%>
				<th><%=LectureBean.dayNames[i]%></th>
				<%
					}
				%>
			</tr>
			<%
				for (int i = 0; i < 6; i++) {
			%>
			<tr>
				<%
					out.print("<!--" + num + "교시-->");
				%>
				<td class="left_column"><%=num++%></td>
				<%
					for (int j = 0; j < 5; j++) {
							if (lectureMan.getTitleMatrix()[i][j] != -1) {
								if (lectureMan.getSpanMatrix()[i][j] == 1) {
									if (lectureMan.getTypeMatrix()[i][j] != 0) {
										out.print("<td class=" + LectureBean.typeNames[lectureMan.getTypeMatrix()[i][j] - 1]
												+ ">");
									} else {
										out.print("<td>");
									}
									out.print(LectureBean.titleNames[lectureMan.getTitleMatrix()[i][j]]);
									out.println("</td>");
								} else if (lectureMan.getSpanMatrix()[i][j] > 1) {
									if (lectureMan.getTypeMatrix()[i][j] != 0) {
										out.print("<td class=" + LectureBean.typeNames[lectureMan.getTypeMatrix()[i][j] - 1]
												+ " rowspan=" + lectureMan.getSpanMatrix()[i][j] + ">");
									} else {
										out.print("<td>");
									}
									out.print(LectureBean.titleNames[lectureMan.getTitleMatrix()[i][j]]);
									out.println("</td>");
								}
							} else {
								if (lectureMan.getSpanMatrix()[i][j] == 1) {
									if (lectureMan.getTypeMatrix()[i][j] != 0) {
										out.print("<td class=" + LectureBean.typeNames[lectureMan.getTypeMatrix()[i][j] - 1]
												+ ">");
									} else {
										out.print("<td>");
									}
									out.print("&nbsp;");
									out.println("</td>");
								} else if (lectureMan.getSpanMatrix()[i][j] > 1) {
									if (lectureMan.getTypeMatrix()[i][j] != 0) {
										out.print("<td class=" + LectureBean.typeNames[lectureMan.getTypeMatrix()[i][j] - 1]
												+ " rowspan=" + lectureMan.getSpanMatrix()[i][j] + ">");
									} else {
										out.print("<td>");
									}
									out.print("&nbsp;");
									out.println("</td>");
								}
							}
						}
					}
				%>
			</tr>
		</table>
		<hr>
		<%
			if (lecture.getType() != -1) {
				for (LectureBean lb : lectureMan.getLectureList()) {
					out.println(LectureBean.typeNames[lb.getType()] + "/");
					out.println(LectureBean.titleNames[lb.getTitle()] + "/");
					out.println(LectureBean.dayNames[lb.getDay()] + "/");
					out.println((lb.getTime() + 1) + "/");
					out.println((lb.getConsecutive() + 1) + "<br>");
				}
			}
		%>
	</div>
</body>
</html>