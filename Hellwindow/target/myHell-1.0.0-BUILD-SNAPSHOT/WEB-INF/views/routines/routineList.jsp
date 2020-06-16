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
	<h1>루틴목록화면</h1>
	<div class="rightAlign">
		<input type="button" value="나만의 루틴 만들기" onClick="location.href='<%=contextPath%>/routine/createCustomRoutine'">
	</div>
	<div class="leftAlign">
		<img class="routineImg" src="<c:url value='/images/routine/routine1.png'/>" >
		<a class="verticalTop" class="redtext" href="<c:url value='/routine/routineDetails' />">가슴 위주 루틴</a>		
	</div>
	<div class="rightAlign">
		<img class="routineImg" src="<c:url value='/images/routine/routine2.jpg'/>">
	</div>
	<div class="leftAlign">
		<img class="routineImg" src="<c:url value='/images/routine/routine3.png'/>">
	</div>
</body>
</html>