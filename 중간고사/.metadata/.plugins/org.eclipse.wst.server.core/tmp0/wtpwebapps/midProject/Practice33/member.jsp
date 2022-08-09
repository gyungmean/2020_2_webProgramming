<!-- 컴퓨터학과 20190941 김경민 -->
<!-- 최적 실행화면 : Chrome browser -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>회원 가입</title>
		<style>
			td.center{
				text-align: center;
			}
			td.color{
				text-align: center;
				background-color: #FFDAB9;
				height: 50px;
			}
			td.form{
				border: solid 1px #000000;
			}
			table.form{
				border-collapse: collapse;
				border: solid 1px #000000;
			}
			td.title{
				border: solid 1px #000000;
				background-color: #ECECEC;
				font-weight: bold; 
				text-align: center;
			}
			input.imageAlign{
				vertical-align:middle;
			}
		</style>
		
		<script type="text/javascript">
			function checkEmail() {
				var txtMail = frm3.email.value;
				var result = txtMail.indexOf("@");
				if(result == -1){
					alert('이메일주소 형식이 틀렸습니다.');
				}
				else{
					alert('사용가능한 이메일 주소입니다.');
				}
				clearMessage();
			}
			
			function clearMessage(){
				frm3.email.value="";
			}
		</script>
	</head>
	<body>
		<div align="center">
			<table>
				<tr>
					<td class="center"><img src="image/eclass_title.jpg"></td>
				</tr>
			</table>
			<form name="frm3" action="register.jsp">
			<table class="form">
				<tr>
					<td colspan="2" class=title>회원 가입</td>
				</tr>
				<tr>
					<td class="title">아이디</td>
					<td class="form"><input type="text" name="id"> <input type="image" src="image/check.gif" class="imageAlign"></td>
				</tr>
				<tr>
					<td class="title">패스워드</td>
					<td class="form"><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td class="title">성별</td>
					<td class="form"><input type="radio" name="gender" value="1" name="gender">남 <input type="radio" name="gender" value="2" name="gender" checked>여</td>
				</tr>
				<tr>
					<td class="title">국적</td>
					<td class="form"><input type="text" readonly value="대한민국"> <input type="button" value="국적변경"></td>
				</tr>
				<tr>
					<td class="title">휴대폰</td>
					<td class="form">
						 <select name="phone">
							<option value="1" selected>010</option>
							<option value="2">011</option>
							<option value="3">017</option>
							<option value="4">070</option>
							<option value="5">080</option>
						</select>
						 - <input type="text" size="5px"> - <input type="text" size="5px"> 
					</td>
				</tr>
				<tr>
					<td class="title">이메일</td>
					<td class="form"><input type="text" size="40px" value="소식지 받아보기" name="email"
										onFocus="this.value='' " name="email">
					<input type="image" src="image/check.gif" class="imageAlign" onClick="checkEmail()">
					</td>
				</tr>
				<tr>
					<td class="title">생일</td>
					<td class="form"><input type="date" name="birth" value="연도-월-일"></td>
				</tr>
				<tr>
					<td class="title">관심분야</td>
					<td class="form"><input type="checkbox" name="hobby" value="0">뉴스 
					<input type="checkbox" name="hobby" value="1" checked>맛집
					<input type="checkbox" name="hobby" value="2">책 
					<input type="checkbox" name="hobby" value="3">영화 
					<input type="checkbox" name="hobby" value="4">여행
					</td>
				</tr>
				<tr>
					<td class="title">가입인사</td>
					<td class="form"><textarea cols="60px" rows="10px">회원들에게 간단한 가입인사를 남겨주세요</textarea></td>
				</tr>
				<tr>
					<td class="title">증명사진</td>
					<td class="form"><input type="file"></td>
				</tr>
				<tr>
				 	<td colspan="2" class="title">
				 	<input type="submit" value="가입하기"> <input type="reset" value="다시작성">
				 	</td>
				</tr>
			
			</table>
			</form>
		</div>
	</body>
</html>