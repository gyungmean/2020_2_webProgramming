<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Problem01.*"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.util.*" %>

<jsp:useBean id="am" class="Problem01.AddrManager" scope="application" />
<%! 
	int rpp = 2; //row per page
	int cnt; //저장된 주소의 개수
	int allPage; //전체 페이지 개수
	int currentPage; //현재 페이지
	int lastIndex; 
	int startIndex;
	
	
%>
<html>
<head>
<style>
	table{
		width: 500px;
		border: 1px solid #444444;
	}
	tr, td{
		border: 1px solid #444444;
		text-align: center;
	}
</style>
<meta charset="UTF-8">
<title>주소록 그룹순</title>
</head>
<body>
<div align="center">
<h2>주소록(그룹보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a><p>
<%
	if(request.getParameter("sindex") == null){
		currentPage = 1;
	}
	else{
		currentPage = Integer.parseInt(request.getParameter("sindex"));
	}

	lastIndex = currentPage * 2 - 1;
	startIndex = lastIndex - 1;
%>
<table>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>
<%
	List<AddrBean> ab = am.getAddrList();
	List<AddrBean> sort = new ArrayList<AddrBean>(); // 정렬을 해줄 새로운 List 생성
	
	cnt = ab.size();
	
	if(cnt % rpp == 0){
		allPage = cnt / 2;
	}
	else{
		allPage = cnt / 2 + 1;
	}
	
	for(AddrBean a : ab){
		if(a.getGroup().equals("가족")){
			sort.add(a);
		}
	}
	for(AddrBean a : ab){
		if(a.getGroup().equals("친구")){
			sort.add(a);
		}
	}
	for(AddrBean a : ab){
		if(a.getGroup().equals("직장")){
			sort.add(a);
		}
	}
	
	for(int i = startIndex; i <= lastIndex; i++){
		if(i >= cnt || cnt == 0) break; // 현재 저장된 개수보다 index가 커질 경우 종료 또는 저장된 개수가 0이면 출력하지 않음
		
%>
			<tr>
			<td><%=sort.get(i).getUsername() %></td>
			<td><%=sort.get(i).getTel() %></td>
			<td><%=sort.get(i).getEmail() %></td>
			<td><%=sort.get(i).getSex() %></td>
			<td><%=sort.get(i).getGroup() %></td>
			</tr>
<%
	}
%>
</table>
<p>
<%
	for(int i = 1; i <= allPage; i++){
		if(i == currentPage){
			out.print(i + "| ");
		}
		else{
			out.print("<a href=\"addr_list_group.jsp?sindex="+ i + "\">" + i + "</a>| ");
		}
	}
%>
<p>
<a href="addr_list.jsp">등록 순으로 보기</a> <!-- 추가 기능 그룹순과 등록순 왔다갔다 할 수 있게 sindex값 전달 x -->
</div>
</body>
</html>