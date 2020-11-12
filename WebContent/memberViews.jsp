<%@page import="members.MemberDTO"%>
<%@page import="members.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="members.MemberDAO"></jsp:useBean>
	<table border="1" style="margin: 0 auto;">
		<tr>
			<td>ID</td>
			<td>PW</td>
			<td>NAME</td>
			<td>ADDRESS</td>
			<td>TEL</td>
		</tr>
	
	<%
		ArrayList<MemberDTO> list = dao.memberList();
		for(MemberDTO member : list){ %>
		<tr>
			<td><%=member.getId() %></td>
			<td><%=member.getPw() %></td>
			<td><%=member.getName() %></td>
			<td><%=member.getAddr() %></td>
			<td><%=member.getTel() %></td>		
		</tr>	
	<%	} %>
	</table>
</body>
</html>