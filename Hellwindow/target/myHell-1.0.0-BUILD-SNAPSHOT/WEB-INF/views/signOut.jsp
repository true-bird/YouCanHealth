<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% session.removeAttribute("myId2"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="/WEB-INF/views/home.jsp">
		<jsp:param name="myPassword" value="acdac" />
	</jsp:forward>
</body>
</html>