<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/routine.css?after">
</head>
<body>
	<h1>루틴상세화면</h1>
	<div class="leftAlign">
		<h4>월</h4>
		<hr width="50%">
		<img class="routineImg" src="<c:url value='/images/routine/routine1.png'/>" >
		<span class="verticalTop">가슴땡겨</span>
		<span class="verticalTop">12세트/3회</span>
		
	</div>
	<div class="rightAlign">
		<h4>화</h4>
		<hr width="50%">
		<h4>쉬어</h4>
		<p>격렬히/3회</p>
	</div>
	<div class="rightAlign">
		<h4>수</h4>
		<hr width="50%">
		<img class="routineImg" src="<c:url value='/images/routine/routine1.png'/>" >
		<h4>가슴또땡겨</h4>
		<p>12세트/3회</p>
	</div>
	<a class="redtext" href="<c:url value='/user/userRoutineList' />">등록</a>
</body>
</html>