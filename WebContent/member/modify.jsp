<%@page import="members.MemberDAO"%>
<%@page import="members.MemberDTO"%>
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
	<div class="Wrap">
	<%
		String id = (String)session.getAttribute("login");
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.searchOne(id);
	%>
		<jsp:include page="/default/header.jsp"></jsp:include>
		<div class="main">
			<form action="modifyCheck.jsp" method="post">
				<table style="margin: 0 auto;">
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" value="<%=member.getName() %>"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td><input type="text" name="addr" value="<%=member.getAddr() %>"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="tel" value="<%=member.getTel() %>"></td>
					</tr>
					<tr>
						<td><input type="submit" value="완료"></td>
					</tr>
				</table>
			</form>
		</div>
		<jsp:include page="/default/footer.jsp"></jsp:include>
	</div>
</body>
</html>