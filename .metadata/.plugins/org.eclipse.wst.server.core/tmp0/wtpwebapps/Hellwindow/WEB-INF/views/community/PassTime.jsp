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
	<h1>게시판</h1>
	잡담
	<hr>
	<br>
	<div>
		<a class="redtext" href="<c:url value='/community' />">전체글보기</a>|
		<a class="redtext" href="<c:url value='/community/Notice' />">공지사항</a>|
		<a class="redtext" href="<c:url value='/community/HoneyTip' />">운동꿀팁</a>|
		<a class="redtext" href="<c:url value='/community/PassTime' />">잡담</a>
	</div>
	<br>
	<table border="1">
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		<tr>
		<tr>
			<th><a href="<c:url value='/community/readPost' />">무슨운동을
					해야할까요?</a></th>
			<th>shak1401</th>
			<th>2020.06.10</th>
			<th>10</th>
		<tr>
	</table>
	<a class="redtext" href="<c:url value='/community/createPost' />">글쓰기</a>
</body>
</html>