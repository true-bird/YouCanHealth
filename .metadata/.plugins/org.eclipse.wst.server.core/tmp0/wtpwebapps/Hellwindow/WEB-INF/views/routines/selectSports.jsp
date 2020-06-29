<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ExSports</h1>
	<div id="cInput">
		<ul>
			<c:forEach var="chest" items="${chest}" varStatus="status">
				<li>${chest.exName}</li>
			</c:forEach>
		</ul>
		<ul>
			<c:forEach var="back" items="${back}" varStatus="status">
				<li>${back.exName}</li>
			</c:forEach>
		</ul>
		<ul>
			<c:forEach var="shoulder" items="${shoulder}" varStatus="status">
				<li>${shoulder.exName}</li>
			</c:forEach>
		</ul>
		<ul>
			<c:forEach var="abs" items="${abs}" varStatus="status">
				<li>${abs.exName}</li>
			</c:forEach>
		</ul>
		<ul>
			<c:forEach var="lower" items="${lower}" varStatus="status">
				<li>${lower.exName}</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>