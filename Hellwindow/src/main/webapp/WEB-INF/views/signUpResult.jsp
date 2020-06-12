<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 축하 화면</h1>
	<h2>회원가입을 축하합니다!!</h2>
	<br> 회원아이디
	<%=request.getAttribute("myId")%>
	<br> 회원패스워드
	<%=request.getAttribute("myPassword")%>
	<br> 회원성명
	<%=request.getAttribute("myName")%>
	<br> 운동경력
	<%
		String[] exerdateArray = (String[]) request.getAttribute("exerdate");
		for (int i = 0; i < exerdateArray.length; i++) {
			out.print(exerdateArray[i] + "<br>");
		}
	%>
	<br> 등급
	<br> 나의 포인트
	<br>
	<br> *현재 회원님의 포인트는 [ ] 점 이며, 향후 저희 페이지에 방문해 활동하시는만큼 누적됩니다.
	<br> 누적된 포인트는 모으시면 게시글에 아름다운 효과를 넣으실 수 있으니, 참고하시기 바랍니다.
	<br> 언제나 고객의 입장에서 정성을 다하는 쇼핑몰이 되도록 노력하겠습니다.
	<br> 많은 애용부탁드립니다.*
	<br>
	<br>
	<h1>
		<a class="redtext" href="<c:url value='/' />">홈으로가기</a>
	</h1>
</body>
</html>