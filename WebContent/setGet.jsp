<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="members.MemberDTO"></jsp:useBean>
	id : <jsp:getProperty property="id" name="member"/><br>
	<%-- <%= member.getId() %> 와 같은 기능 --%>
	pw : <jsp:getProperty property="pw" name="member"/><br>
	<jsp:setProperty property="id" name="member"/>
	<%-- <%= member.setId(request.getParameter("id") %> 와 같은 기능 --%>
	<jsp:setProperty property="pw" name="member"/>
	id : <jsp:getProperty property="id" name="member"/><br>
	pw : <jsp:getProperty property="pw" name="member"/><br>
</body>
</html>