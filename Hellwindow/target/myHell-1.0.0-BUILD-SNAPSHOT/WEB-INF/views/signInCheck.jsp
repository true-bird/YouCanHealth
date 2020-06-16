<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%
    session.setMaxInactiveInterval(60*5);
    if(request.getAttribute("myId").equals("shak1401")){ //조건  myId 가 shak401 
    session.setAttribute("myId2", request.getAttribute("myId"));
	// 이면 session  myId2 라는 이름으로  생성  myId2=shak1401 로 만들어짐 (디미 만들면 조건을 디비에 있는 정보를 select하는 걸로 만들면됨)
    }
%>
<%
	String contextPath = request.getContextPath();//각자의 컨텍스트를  찾아서 자동으로 변경시켜준다.
    String id=(String)request.getAttribute("myId");
    String password=(String)request.getAttribute("myPassword");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<% if(session.getAttribute("myId2") !=null) { %> <%-- myId2에 값이 없으면 로그인 페이지로 있으면 홈페이지로 --%>
	<jsp:forward page="/WEB-INF/views/home.jsp">
		<jsp:param name="myId" value="<%=id%>" />
		<jsp:param name="myPassword" value="<%=password%>" />
	</jsp:forward>
	<% } else { %>
	<jsp:forward page="signIn.jsp">
		<jsp:param name="message" value="아이디 페스워드가 틀렸습니다." />
	</jsp:forward>
	<% } %>
</body>
</html>