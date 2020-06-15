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
	<h1>글내용</h1>
	<hr>
	<br>
	<div>
		<a class="redtext" href="<c:url value='/community' />">전체글보기</a>|
		<a class="redtext" href="<c:url value='/community/Notice' />">공지사항</a>|
		<a class="redtext" href="<c:url value='/community/HoneyTip' />">운동꿀팁</a>|
		<a class="redtext" href="<c:url value='/community/PassTime' />">잡담</a>
	</div>
	<br>
	<hr>
	제목: 불라불라불라
	<br>
	<hr>
	내용: 아아 나는 운동하기 싫은데 살이 너무 쪄서 운동좀 해야겠는뎅 어떻게 어떻게 어똏게 해야할까요??
	<br>
	<hr>
	<a class="redtext" href="<c:url value='/community' />">작성자가
		작성한 추가 글</a>

	<hr>
	댓글
	<hr>
	아이디 [내용] 작성 시간
	<br> 내가 추가하기
	<input type="text">
	<hr>
	<br>
	<br>
	<a class="redtext" href="<c:url value='/community/createPost' />">글쓰기</a>
</body>
</html>