<%@page import="members.MemberDAO"%>
<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
	.main h1{
		margin: 0 auto;
	}
</style>
</head>
<body>
	<%
		if(session.getAttribute("login") == null){
			response.sendRedirect("login.jsp");
		}
	%>
	
	<div class="wrap">
		<jsp:include page="/default/header.jsp"></jsp:include>
		<div class="main">
			<h1 style="display: inline-block; margin: 0 auto;">회원 목록</h1>
			<table border="1" style="margin: 0 auto;">
				<tr style="text-align: center;">
					<th>이름</th>
					<th>주소</th>
					<th>전화번호</th>
				</tr>
				<%
					MemberDAO dao = new MemberDAO();
					ArrayList<MemberDTO> list = dao.memberList();
					for(MemberDTO member : list){ %>
					<tr>
						<td><a href="personalInfo.jsp?id=<%=member.getId() %>"><%=member.getName() %></a></td>
						<td><%=member.getAddr() %></td>
						<td><%=member.getTel() %></td>
					</tr>	
				<%	}%>
				
			</table>
		</div>
		<jsp:include page="/default/footer.jsp"></jsp:include>
	</div>
</body>
</html>