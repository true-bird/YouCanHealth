<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/sports.css?after'/>" />
<body>
	<h1 id="h1_left">내가
		좋아하는 운동</h1>
	
	<hr>


	<table id="tablelike">
		<c:forEach var="sportsLike" items="${userLikeSports}"
			varStatus="status">
			<tr>
				<td style="font-size: 25px; color: red;">
					<li><input type="hidden" name="userId" value="<%=id%>"> ${sportsLike.exName}</td></li>
				<td>
					<form action="<%=contextPath%>/user/deleteUserLike" method="post">
						<input type="hidden" name="seq" value="${sportsLike.seq}">
						<input id= "selectbutton" type="submit" value="삭제">
					</form>
				</td>
			</tr>
			<tr>
			<td><br></td>
			</tr>
		</c:forEach>
	</table>



</body>
</html>