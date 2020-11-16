<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.header{
		margin: 0 auto;
		text-align: center;
		heigth: 150px;
	}
	.nav{
		text-align: right;
	}
</style>
</head>
<body>
	<div class="header">
		<h1 style="display: inline-block; margin: 0 auto; color: gold;">CARE LAB</h1>
		<br><br><br><hr>
		<div class="nav">
			<a href="index.jsp">HOME</a> &nbsp;&nbsp;&nbsp;
			<a href="memberInfo.jsp">회원정보</a> &nbsp;&nbsp;&nbsp;
			<%
				if(session.getAttribute("login") == null){ %>
					<a href="login.jsp">로그인</a>
			<%	} else { %>
					<a href="logout.jsp">로그아웃</a> &nbsp;&nbsp;&nbsp;
					<a href="myInfo.jsp">회원 정보 수정</a>
			<%	} %>
		</div>
		<hr>
	</div>
</body>
</html>