<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.wrap{
		height: 800px;
	}
	.main{
		height: 500px;
	}
</style>

<script type="text/javascript">
	function check(){
		var pw1 = document.getElementById("pw").value;
		var pw2 = document.getElementById("pw2").value;
		if(pw1 === pw2){
			document.getElementById("checkFont").innerHTML = "일치";
			document.getElementById("checkFont").color = "blue";
		} else {
			document.getElementById("checkFont").innerHTML = "불일치";
			document.getElementById("checkFont").color = "red";
		}
	}
</script>
</head>
<body>
	<div class="wrap">
		<jsp:include page="/default/header.jsp"></jsp:include>
		<div class="main">
			<H1>회원 가입</H1>
			<form action="memberSignCheck.jsp" method="post">
				<table style="margin: 0 auto;">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id"></td>
						<td>*필수</td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" id="pw" name="pw" onkeyup="check()"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" id="pw2" name="pw2"  onkeyup="check()"></td>
						<td><font id="checkFont">*필수</font></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td><input type="text" name="addr"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="tel"></td>
					</tr>
					<tr>
						<td><input type="submit" value="회원가입"></td>
						<td><input type="reset" value="취소"></td>
					</tr>
				</table>
			</form>
		</div>
		<jsp:include page="/default/footer.jsp"></jsp:include>
	</div>
</body>
</html>