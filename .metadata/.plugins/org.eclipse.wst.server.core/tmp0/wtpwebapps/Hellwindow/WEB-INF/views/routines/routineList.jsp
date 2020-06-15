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
	<div id="dropbox" class="rightAlign">
		<select name="">
			<option value="인기 루틴">인기 루틴</option>
			<option value="등 중심 루틴">등 중심 루틴</option>
			<option value="가슴 중심 루틴">가슴 중심 루틴</option>
			<option value="삼분할 루틴">삼분할 루틴</option>
		</select>
	</div>
	<div id="title">
		<p>
			<span style="font-weight: bold">등 중심</span>
			<span >루틴</span>
		</p>
	</div>
	<div class ="sectionWrapper rightAlign"
	OnClick="location.href='<c:url value='/routine/createCustomRoutine'/>'" style="cursor:pointer;">
		<div class="section-background background-image"></div>
		<div class="section-background background-cover"></div>
		<div class="section">
			<p class="section-text title">한달 만에 등신 되는 루틴</p>
			<p class="section-text difficulty">난이도 ★★★★☆ </p>
		</div>
	</div>
	<br>
	<div class ="sectionWrapper leftAlign">
		<div class="section-background background-image"></div>
		<div class="section-background background-cover"></div>
		<div class="section">
			<p class="section-text title">그냥 등신 되는 루틴</p>
			<p class="section-text difficulty">난이도 ★★★☆☆ </p>
		</div>
	</div>
	<br>
	<div class ="sectionWrapper leftAlign">
		<div class="section-background background-image"></div>
		<div class="section-background background-cover"></div>
		<div class="section">
			<p class="section-text title">땡겨 ~~!!</p>
			<p class="section-text difficulty">난이도 ★★☆☆☆ </p>
		</div>
	</div>
	<br>
	<div class ="sectionWrapper rightAlign">
		<div class="section-background background-image"></div>
		<div class="section-background background-cover"></div>
		<div class="section">
			<p class="section-text title">에라이 등신</p>
			<p class="section-text difficulty">난이도 ★☆☆☆☆ </p>
		</div>
	</div>
	
	<input id = "floatingButton" type="button" value="나만의 루틴 만들기" onClick="location.href='<c:url value='/routine/createCustomRoutine'/>'">
	
</body>
</html>