<%--컴퓨터학과 20190941 김경민 --%>
<%--최적 실행화면 : Chrome browser --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%!
	int num1 , num2 = 0;
	int result = 0;
	String op = "+";
	
	public int calculator(){
		if(op.equals("+")){
			result = num1 + num2;
		}else if(op.equals("-")){
			result = num1 - num2;
		}else if(op.equals("*")){
			result = num1 * num2;
		}else if(op.equals("/")){
			result = num1 / num2;
		}
		return result;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>계산기</title>
	<style>
		table{
			width: 400px;
		}
		tr{
			text-align: center;
		}
		
		tr.blue{
			background-color: #34CBFC;
		}
	</style>
	<script type="text/javascript">
			function calc() {
				var exp = prompt('계산할 수식을 입력하세요');
				if(exp == null){
					return;
				}
				var result = eval(exp);
				alert(result);
				
				
			}
	</script>
</head>
<body>
	<div align="center">
	<table>
		<tr class="blue">
			<td colspan="2" style="font-size: 35px"><I>CalCuLaTor</I></td>
		</tr>
		<tr>
			<td width="200px"><img src="image/cal.jpg"></td>
			<td width="200px">
				<%
					num1 = Integer.parseInt(request.getParameter("num1"));
					num2 = Integer.parseInt(request.getParameter("num2"));
					op = request.getParameter("op");
					
					result = calculator();
					out.println("<input size=\"10\" type=\"text\" readonly value =" + num1 + " style=\"text-align:center;\"><br><br>");
					out.println(op + "<br><br>");
					out.println("<input size=\"10\" type=\"text\" readonly value =" + num2 + " style=\"text-align:center;\"><br><br>");
					out.println("=" + "<br><br>");
					out.println("<input size=\"10\" type=\"text\" readonly value =" + result + " style=\"text-align:center;\"><br><br>");
				%>
			</td>
		</tr>
		<tr class="blue">
			<td colspan="2" style="font-size: 35px">　</td>
		</tr>
	</table>
	</div>
</body>
</html>