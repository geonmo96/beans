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
		display: flex;
	}
	.left{
		width: 60%;
	}
	.right{
		width: 40%;
		align-items: right;
		
		
	}
</style>
</head>
<body>
	<div class="wrap">
		<jsp:include page="/default/header.jsp"></jsp:include>
		<div class="main">
			<div class="left">
				<h1>로그인 페이지입니다.</h1>
			</div>
			<div class="right">
				<form action="loginCheck.jsp" method="post">
					<table style="margin: 0 auto;">
						<tr>
							<td><input type="text" name="id" placeholder="아이디"></td>
							<td rowspan="2"><input type="submit" value="로그인" style="height: 50px;"></td>
						</tr>
						<tr>
							<td><input type="password" name="pw" placeholder="비밀번호"></td>
						</tr>
						<tr>
							<td><a href="memberSign.jsp">회원가입</a></td>
						</tr>
					</table>
				</form>		
				
			</div>
		</div>

		<jsp:include page="/default/footer.jsp"></jsp:include>
	</div>
</body>
</html>