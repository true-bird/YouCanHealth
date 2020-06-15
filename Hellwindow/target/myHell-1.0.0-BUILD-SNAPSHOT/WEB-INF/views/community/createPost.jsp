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
	<h1>글쓰기</h1>
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
	<form action="<%=contextPath%>/community" method="post">
		<table style="padding-top: 50px" align="center" width="1000" 
			border="0" cellpadding="2">
			<tr>
				<td height=20 align=center ><font color=white>
						글쓰기</font></td>
			</tr>
			<tr>
				<td>
					<table class="table2">
						<tr>
							<td>작성자</td>
							<td><input type=text name=name size=20></td>
						</tr>

						<tr>
							<td>제목</td>
							<td><input type=text name=title size=60></td>
						</tr>

						<tr>
							<td>내용</td>
							<td><textarea name=content cols=85 rows=15></textarea></td>
						</tr>

					</table>

					<center>
						<input type="submit" value="확인">
						<input type="submit" value="취소">
					</center>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>