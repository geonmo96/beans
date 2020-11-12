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
	<jsp:setProperty property="*" name="mem"/>
	<!-- 
	jsp:usebean의 장점은 set하는 코드의 단순화이다.
	mem.setId(request.getParameter("id"); 
	맴버 객체의 속성이 무수히 많아도 한번에 set할 수 있다
	주의점으로는 setter에 의해서 바로 저장되기 때문에
	html에서 입력받는 name과 객체 속성의 name이 같아야 한다. 
	-->
	id : <%=mem.getId() %><br>
	pw : <%=mem.getPw() %><br>
	name : <%=mem.getName() %><br>
	addr : <%=mem.getAddr() %><br>
	tel : <%=mem.getTel() %><br>
</body>
</html>