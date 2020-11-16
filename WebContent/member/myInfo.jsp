<%@page import="members.MemberDTO"%>
<%@page import="members.MemberDAO"%>
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
		myinfo.jsp
			<H1>개인 정보</H1>
			<table style="margin: 0 auto;">
				<%
					String searchId = (String)session.getAttribute("login");
					MemberDAO dao = new MemberDAO();
					MemberDTO member = dao.searchOne(searchId);
				%>
				<tr>
					<td>아이디</td>
					<td> : </td>
					<td><%= member.getId() %></td>
					
				</tr>
				<tr>
					<td>비밀번호</td>
					<td> : </td>
					<td><%= member.getPw() %></td>
				</tr>
				<tr>
					<td>이름</td>
					<td> : </td>
					<td><%= member.getName() %></td>
				</tr>
				<tr>
					<td>주소</td>
					<td> : </td>
					<td><%= member.getAddr() %></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td> : </td>
					<td><%= member.getTel() %></td>
				</tr>
				<tr>
					<td><input type="button" value="수정" onclick="location.href='modify.jsp'"></td>
					<td></td>
					<td><input type="button" value="삭제" onclick="location.href='delete.jsp'"></td>
				</tr>
			</table>
		
		</div>
		<jsp:include page="/default/footer.jsp"></jsp:include>
	</div>
</body>
</html>