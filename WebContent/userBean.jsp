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
	<%-- 
	<% MemberDTO dto = new MemberDTO(); %>
		 --%>
	<jsp:useBean id="dto" class="members.MemberDTO"></jsp:useBean>
	<!-- jsp:usebean을 통해서 객체를 생성할 수 있다 -->
	<!-- new 연산과 차이점은 없어보이지만 property의 기능은 usebean을 사용해야 한다 -->
	<h3>저장 전 출력</h3>
	<%= dto.getId() %> : <%= dto.getPw() %>
	<%
		dto.setId("test");
		dto.setPw("1234");
	%>
	
	<h3>저장 후 출력</h3>
	<%= dto.getId() %> : <%= dto.getPw() %>
</body>
</html>