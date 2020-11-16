<%@page import="members.MemberDAO"%>
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
	<jsp:useBean id="mem" class="members.MemberDTO"></jsp:useBean>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.searchOne(id);
		if(member.getId() != null){  %>
			<script type="text/javascript">
				alert("아이디가 중복됩니다!!");
				location.href="memberSign.jsp";
			</script>
				
	<%	} %>	
	<%
		String pw1 = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		if(!pw1.equals(pw2)){ %>
			<script type="text/javascript">
				alert("비밀번호가 일치하지 않습니다!!!")
				location.href="memberSign.jsp";
			</script>
	<%	} %>	
	<%
		if(member.getId() == null && pw1.equals(pw2)){ %>
			<jsp:setProperty property="*" name="mem"/>
	<%		if(dao.insertMember(mem)){	%>
				<script type="text/javascript">
					alert("정상적으로 회원가입 되었습니다!!");
					location.href="login.jsp";
				</script>
		<%	} %>			
	<%	} %>		
	
	
</body>
</html>