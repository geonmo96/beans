<%@page import="members.MemberDTO"%>
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
		request.setCharacterEncoding("utf-8");
		MemberDTO member = new MemberDTO();
		member.setId((String)session.getAttribute("login"));
		member.setName(request.getParameter("name"));
		member.setAddr(request.getParameter("addr"));
		member.setTel(request.getParameter("tel"));
		
		MemberDAO dao = new MemberDAO();
		if(dao.updateMember(member)){ %>
			<script type="text/javascript">
				alert("수정되었습니다!!!");
				location.href="myInfo.jsp";
			</script>	
	<%	} %>
</body>
</html>