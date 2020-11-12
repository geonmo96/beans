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
		String inputId = request.getParameter("id");
		String inputPw = request.getParameter("pw");
		MemberDAO dao = new MemberDAO();
		int result = dao.loginCheck(inputId, inputPw);
		if(result == -1){ %>
			<script type="text/javascript">
				alert("아이디가 없습니다!!");
				location.href="login.jsp";
			</script>		
	<%	} else if(result == 0){ %>
			<script type="text/javascript">
				alert("비밀번호가 없습니다!!");
				location.href="login.jsp";
			</script>
	<%	} else { 
			session.setAttribute("login", inputId);
			response.sendRedirect("successLogin.jsp");
		}
		System.out.print(result);
	%>
</body>
</html>