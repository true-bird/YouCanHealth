<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String myId3 =(String)session.getAttribute("myId2");
	String contextPath = request.getContextPath();//각자의 컨텍스트를  찾아서 자동으로 변경시켜준다.
    String id=(String)request.getAttribute("myId");
    String password=(String)request.getAttribute("myPassword");
%>
<head>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/home.css?after">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<div id="box3">
	<a class="redtext" href="<c:url value='/' />">홈</a>/
	<a class="redtext" href="<c:url value='/community' />">커뮤니티</a>/
	<a class="redtext" href="<c:url value='/sports' />">운동방법</a>/ 
	<a class="redtext" href="<c:url value='/routines' />">루틴</a>/ 
	<%
	if(myId3!=null) { 
	%>
	<a class="redtext" href="<c:url value='/userInfo' />">내정보</a>/ 
	<a class="redtext" href="<c:url value='/logout' />">로그아웃</a>
	<%
	} else {
	%>
	<a class="redtext" href="<c:url value='/signIn' />">로그인</a>/ 
	<a class="redtext" href="<c:url value='/signUp' />">회원가입</a>
	<%
	}
	%>	
</div>
