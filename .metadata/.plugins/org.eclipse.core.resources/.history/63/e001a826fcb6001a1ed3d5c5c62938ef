<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.redtext:hover {
	text-decoration: none;
	opacity: 0.7;
	width: 100%;
	height: 100%;
}

.redtext {
	font-weight: bold;
	color: #ffffff;
	text-decoration: none;
	width: 100%;
	height: 100%;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/community.css?after'/>" />
<!-- (insert) -->
</head>
<body>
	<hr>
	<table style="background-color: #364156;">
		<tr>

			<th>작성자:${communityDto.id}</th>
			<th>카테고리:${communityDto.category}</th>
			<th>조회수:${communityDto.hit}</th>
		</tr>
		<tr>
			<th colspan="3" style="font-size: 30px;">제목:
				${communityDto.title}</th>
		<tr>
			<th>내용</th>
			<th><textarea name="content" cols=100 rows=20
					style="font-size: 20px;" readonly="readonly">${communityDto.content}</textarea>
			</th>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp</td>
			<td>&nbsp&nbsp&nbsp</td>
			<td>&nbsp&nbsp&nbsp</td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp</td>
			<td>&nbsp&nbsp&nbsp</td>
			<td>&nbsp&nbsp&nbsp</td>
		</tr>
	</table>
	<hr>
	<a class="redtext"
		href="<c:url value='/community/communitylist'/>?list=${communityDto.id}">작성자가
		작성한 글 보러가기</a>
	<hr>
	댓글
	<table class="type08">
		<c:choose>
			<c:when test="${fn:length(list)>0 }">
				<tr>
					<td
						style="border-top: none; border-bottom: none; border-left: hidden; border-right: none;">&nbsp</td>
					<th>아이디</th>
					<th>내용</th>
					<th>생성일자</th>
					<td
						style="border-top: none; border-bottom: none; border-left: none; border-right: none;">&nbsp</td>
				</tr>
				<hr>
			</c:when>
		</c:choose>

		<c:forEach var="user" items="${list}" varStatus="status">
			<c:set var="name" value="${userDto.id}" />
			<c:choose>
				<c:when test="${user.id eq name}">
					<tr>
						<td
							style="border-top: none; border-bottom: none; border-left: hidden;">&nbsp</td>
						<td>${user.id}</td>
						<td>${user.content}</td>
						<td>${user.commentdate}</td>

						<td align="left"
							style="border-top: none; border-bottom: none; border-right: none;">
							<form action="<%=contextPath%>/community/deleteComment"
								method="post">
								<input type="hidden" name="seq" value="${communityDto.seq}">
								<input type="hidden" name="userseq" value="${user.seq}">
								<input type="submit" value="삭제">
							</form>
						</td>

					</tr>
				</c:when>
				<c:otherwise>
					<tr>
						<td
							style="border-top: none; border-bottom: none; border-left: hidden;">&nbsp&nbsp&nbsp&nbsp&nbsp</td>
						<td>${user.id}</td>
						<td>${user.content}</td>
						<td>${user.commentdate}</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</table>
	<hr>
	<form action="<%=contextPath%>/community/createComment" method="post">
		<table>
			<tr>
				<td>댓글 달기:<input type="hidden" value="<%=id%>" name="id"></td>
				<td><textarea name="content" cols=40 rows=2 required></textarea></td>
				<td><input type="submit" value="추가하기"></td>
		</table>
		<input type="hidden" value="${communityDto.seq}" name="communitySeq">
	</form>
	<hr>
	<br>
	<br>
	<a class="redtext" href="<c:url value='/community/createPost' />">글쓰기</a>
	|
	<a class="redtext"
		href="<c:url value='/community/CommunityCategoryList'/>?category=${communityDto.category}">
		목록</a>

	<c:set var="name" value="${userDto.id}" />



	<c:if test="${communityDto.id eq name}">
		<table>
			<tr>
				<td>
					<form action="<%=contextPath%>/community/updatePost" method="post">
						<input type="hidden" name="seq" value="${communityDto.seq}">
						<br> <input type="submit" id="update" name="update"
							value="수정 ">
					</form>
				</td>
				<td>
					<form action="<%=contextPath%>/community/MyCommunityDelete"
						method="post">
						<input type="hidden" name="seq" value="${communityDto.seq}">
						<br> <input type="submit" id="update" name="update"
							value="삭제">
					</form>
				</td>
		</table>
	</c:if>
	<%-- 	<form name="myForm" action="<%=contextPath%>/community/CommunityCategoryList" method="post"> --%>
	<!-- 		<input type="button" id="update" name="update" value="수정 " -->
	<%-- 			onclick="update('${communityDto.id}','<%=myId3%>')"> --%>
	<!-- 	</form> -->
</body>
</html>