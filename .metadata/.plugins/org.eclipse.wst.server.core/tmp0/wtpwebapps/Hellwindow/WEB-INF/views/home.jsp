<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<html>
<head>
<style type="text/css">
table {
	border-color: #gold;
	padding: 10px 70px;
	margin: auto; /* 테이블 가운데 정렬 */
	even-background-color: #dedede;
	odd-background-color: #gold;
	first-background-color: #black;
}

a {
	text-align: right;
}

a:link {
	color: black;
	text-decoration: none;
} /*  방문전 링크*/
a:visited {
	color: black;
	text-decoration: none;
} /*방문후 링크  */
a:hover {
	color: blue;
	text-decoration: underline;
} /*마우스 오버  */
a:active {
	color: black;
	text-decoration: none;
} /*마우스클릭  */
body {
	text-align: center;
	/*background-image: url("/myHell/images/home/home.png"); */
	/*background-color: #ffffff;*/
	/*font-family: 'Noto Sans KR', sans-serif;*/
	/* font-family: "나눔명조"; */
	/*font-size: 25px;  폰트 크기 */
	/* 	color: #ffffff; */
	background-color: #1F2324;
	color: #FFFFFF;
	font-weight: bold;
}

input[type=text], [type=password] {
	width: 270px;
	border: 2px solod #ccc;
	color: blue;
	font-family: "나눔명조"; /* 폰트모양 */
	font-size: 30px; /* 폰트 크기 */
}

input[value=""] {
	width: 70px;
}

[type=number] {
	font-size: 20px;
}

input[type=button], [type=reset], [type=submit] {
	width: 200px;
	border: 2px solod #ccc;
	padding: 10px 20px;
	background-color: orange;
	color: white font-size: 15px; /* 폰트 크기 */
	font-weight: bold;
}

#box {
	text-align: center;
	margin: 0px;
	background-color: #364156;
}

#box2 {
	text-align: center;
	background-color: #364156;
}

#box3 {
	margin: 0px;
	text-align: #364156;
	background-color: #364156;
}

.redtext {
	text-align: center;
	color: red;
	font-family: appleSDGothicNeoROO, D2Coding;
	font-size: 30px;
}
</style>
<title>Home</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/home.css?after'/>" />
</head>
<body>
	<div id="box2" style="background-color: #364156; font-size: 60px">
		<h1 style="color: red;">너 도 헬 수 있 어!!</h1>
	</div>

	<br>
	<video poster="<c:url value='/images/home/zzz.jpg'/>"  width="100%" height="500px" controls="controls">
		<source src="<c:url value='/images/home/hell.mp4'/>" type="video/mp4" />
	</video>
	<br>
	<div id="box" style="background-color: #364156; font-size: 30px">
		<h2>
			운동을 할줄 모른다구요?<br>PT가격이 부담스러우신가요?
		</h2>
	</div>
	<div id="box" style="background-color: #364156; font-size: 30px">
		<h2>전문가의 운동을 보고 따라 하세요.</h2>
	</div>

	<a class="redtext" href="<c:url value='/sports'/>"><img
		src="<c:url value='/images/home/sports.jpg'/>" width="100%" height="500px"></a>

	<div id="box" style="background-color: #364156; font-size: 30px">
			
		<h2>당신의 루틴 저희가 짜주겠습니다.</h2>
	</div >

	<a class="redtext" href="<c:url value='/routine'/>"><img
		src="<c:url value='/images/home/routine.jpg'/>" width="100%" height="500px"></a>

</body>
</html>
