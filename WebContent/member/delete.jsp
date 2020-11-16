<%@page import="members.MemberDAO"%>
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
		String inputId = (String)session.getAttribute("login");
		MemberDAO dao = new MemberDAO();
		if(dao.delete(inputId)){
			session.removeAttribute("login");
	%>
			<script type="text/javascript">
				alert("회원탈퇴 완료!!");
				location.href="index.jsp";
			</script>	
	<%	} %>
</body>
</html>