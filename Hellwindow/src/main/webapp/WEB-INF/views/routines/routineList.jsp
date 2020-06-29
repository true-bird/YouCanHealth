<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/routine.css?after'/>"/>
	<script type="text/javascript" src="<c:url value='/js/routine.js'/>"></script>
	<script>
		if(${msg}) {
			alert("이미 내 루틴에 있습니다");
		}
	</script>
</head>
<body>
	<div id="dropbox" class="rightAlign">
		<select name="category">
			<option value="인기">인기 루틴</option>
			<option value="등 중심">등 중심 루틴</option>
			<option value="가슴 중심">가슴 중심 루틴</option>
			<option value="삼분할">삼분할 루틴</option>
		</select>
	</div>
	<div>
	</div>
	<div id="list">
		<%@ include file="/WEB-INF/views/routines/routineListContent.jsp" %>
	</div>
	<br><br><br>
	<div id="userId" style="display:none;"><%=id%></div>
	<form id="makeRoutine" method="post" action="<c:url value='/'/>routine/createCustomRoutine">
		<input id = "floatingButton" type="submit" value="나만의 루틴 만들기">
	</form>
</body>
</html>