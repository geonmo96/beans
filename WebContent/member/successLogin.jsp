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
</head>
<body>
	<div class="wrap">
		<jsp:include page="/default/header.jsp"></jsp:include>
		<div class="main">
			<h1>로그인 성공</h1>
		</div>
		<jsp:include page="/default/footer.jsp"></jsp:include>
	</div>
</body>
</html>