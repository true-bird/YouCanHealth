<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	@SuppressWarnings("unchecked")
	Map<String,String> userInfo = (HashMap<String,String>)session.getAttribute("userInfo");
	String id ="";
	String name = "";
	if(userInfo!=null) {
		id = userInfo.get("userId");
		name = userInfo.get("userName");
	}
	String contextPath = request.getContextPath();
%>
<head>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css?after'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css?after'/>"/>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<header id="siteHeader">
		<div class="header-background background-image"></div>
		<div class="header-background background-cover"></div>
		<div class="header">
			<ul>
				<li class="menu-item"><a href="<c:url value='/' />">홈</a></li>
				<li class="menu-item"><a href="<c:url value='/community' />">커뮤니티</a></li>
				<li class="menu-item"><a href="<c:url value='/sports' />">운동방법</a></li>
				<li class="menu-item"><a href="<c:url value='/routine' />">루틴</a></li>
				<%
				if(userInfo!=null) {
				%>
				<li class="menu-item"><a href="<c:url value='/user/userInfo' />">내정보</a></li>
				<li class="menu-item"><a href="<c:url value='/logout' />">로그아웃</a></li>
				<%
				} else {
				%>
				<li class="menu-item"><a href="<c:url value='/signIn' />">로그인</a></li> 
				<li class="menu-item"><a href="<c:url value='/signUp' />">회원가입</a></li>
				<%
				}
				%>	
			</ul>
		</div>
	</header>
</body>