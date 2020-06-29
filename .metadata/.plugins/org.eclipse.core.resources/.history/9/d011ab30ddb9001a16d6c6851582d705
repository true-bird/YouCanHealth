<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<%
	String min1 = (String) request.getAttribute("min");
	String mex1 = (String) request.getAttribute("mex");
	String pass1 = (String) request.getAttribute("pass");//(insert) 
	int min = Integer.parseInt(min1);
	int mex = Integer.parseInt(mex1);
	int pass = Integer.parseInt(pass1);//(insert)
%>
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
	<h2 style="font-size: 30px;">${category}</h2>
	<hr>
	<br>
	<div class="bex1" style="font-size: 25px;">
		<a class="redtext" href="<c:url value='/community' />">전체글보기</a> | <a
			class="redtext"
			href="<c:url value='/community/CommunityCategoryList' />?category=공지사항">공지사항</a>
		| <a class="redtext"
			href="<c:url value='/community/CommunityCategoryList' />?category=운동꿀팁">운동꿀팁</a>
		| <a class="redtext"
			href="<c:url value='/community/CommunityCategoryList' />?category=잡담">잡담</a>

	</div>
	<br>
	<table border="1" class="type08">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>카테고리</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<%
			if (userInfo != null) {
		%>
		<c:forEach var="user" items="${list}" varStatus="status"
			begin="<%=min%>" end="<%=mex%>">
			<tr
				onClick="document.location.href='<c:url value='/community/readPost' />?seq=${user.seq}'">
				<td>${status.index+1}</td>
				<td><a class="redtext"
					href="<c:url value='/community/readPost' />?seq=${user.seq}">${user.title}</a></td>
				<td>${user.category}</td>
				<td>${user.id}</td>
				<td>${user.creationDate}</td>
				<td>${user.hit}</td>
			</tr>
		</c:forEach>

		<%
			} else {
		%>
		<c:forEach var="user" items="${list}" varStatus="status"
			begin="<%=min%>" end="<%=mex%>">
			<tr onClick="document.location.href='<c:url value='/signIn'/>'">
				<td>${status.index+1}</td>
				<td><a class="redtext" href="<c:url value='/signIn'/>">${user.title}</a></td>
				<td>${user.category}</td>
				<td>${user.id}</td>
				<td>${user.creationDate}</td>
				<td>${user.hit}</td>
			</tr>
		</c:forEach>
		<%
			}
		%>
	</table>
	<!-- (insert) start-->
	<%
		int i = pass;
	%>
	<%
		if (i < 0) {
			i = 1;
		}
	%>
	<br>
	<!-- <br>(insert) -->
	<table>
		<tr>
			<td><form action="<%=contextPath%>/community/cont" method="post">
					<input type="hidden" name="pass" value="<%=i - 9%>"> <input
						type="hidden" name="min" value="<%=i * 9%>"> <input
						type="hidden" name="mex" value="<%=(i + 1) * 9%>"> <input
						type="hidden" name="list" value="${communityDto.id}"> <input
						type="hidden" name="category"
						value="<%=request.getAttribute("category")%>"> <input
						type="submit" value="<<">
				</form></td>
			<%
				for (int j = i - 1; j < (i + 9); j++) {
			%>
			<td>
				<form action="<%=contextPath%>/community/cont" method="post">
					<input type="submit" value="<%=j + 1%>"> <input type="hidden"
						name="pass" value="<%=i%>"> <input type="hidden"
						name="min" value="<%=j * 9%>"> <input type="hidden"
						name="mex" value="<%=(j + 1) * 9%>"> <input type="hidden"
						name="list" value="${communityDto.id}"> <input
						type="hidden" name="category"
						value="<%=request.getAttribute("category")%>">
				</form>
			</td>
			<%
				}
			%><td><form action="<%=contextPath%>/community/cont"
					method="post">
					<input type="hidden" name="pass" value="<%=i + 9%>"> <input
						type="hidden" name="min" value="<%=i * 9%>"> <input
						type="hidden" name="mex" value="<%=(i + 1) * 9%>"> <input
						type="hidden" name="list" value="${communityDto.id}"> <input
						type="hidden" name="category"
						value="<%=request.getAttribute("category")%>"> <input
						type="submit" value=">>">
				</form></td>
		</tr>
	</table>
	<br>
	<!-- <br>(insert) -->
	<form action="<%=contextPath%>/community/search" method="post">
		<table>
			<tr>
				<td>제목<input type="text" name="title"></td>
				<td>내용<input type="text" name="content"></td>
				<td>작성기간 <input type="date" name="creationDate"></td>
				<td><input type="submit" value="검색"></td>
			</tr>
		</table>
	</form>
	<!-- (insert) end-->
	<br>
	<%
		if (userInfo != null) {
	%>
	<a class="redtext" href="<c:url value='/community/createPost' />">글쓰기</a>
	|
	<a class="redtext"
		href="<c:url value='/community/MyCommunity' />?category=내가 쓴글">내가
		쓴글</a>
	<%
		} else {
	%>
	<a class="redtext" href="<c:url value='/signIn'/>">글쓰기</a>
	|
	<a class="redtext"
		href="<c:url value='/signIn'/>">내가
		쓴글</a>
	<%
		}
	%>
</body>
</html>