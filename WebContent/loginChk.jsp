<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberDTO m = new MemberDTO();
		m.setId("1234");
		m.setPw("1234");
		if(id.equals(m.getId()) && pw.equals(m.getPw())){
			out.print(m.getId() + "님 반갑습니다.");
		} else {
			out.print("회원정보가 존재하지 않습니다.");
		}
		
	%>
	<hr>
	<a href="javascript:history.back()">이전</a>
</body>
</html>