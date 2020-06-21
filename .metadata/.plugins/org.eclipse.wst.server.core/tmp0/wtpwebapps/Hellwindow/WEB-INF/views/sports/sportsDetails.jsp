<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/sports.css?after'/>"/>
	<!-- ========== bxSlider : 시작 ==========  -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<!-- ========== bxSlider : 종료 ==========  -->
	<script>
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			mode : 'horizontal', // 이미지 교체 방식. 'horizontal', 'vertical', 'fade'
			captions : false,

			slideWidth : 300,
			slideheight :300,
			speed: 1000,
			adaptiveHeight : true,

			//추가속성
			controls : true, 
			auto : true, //이미지 회전 자동 실행 여부
			autoHover : true 
		});
	});
	</script>
</head>
<body>
	<h2>Infomation</h2>
	<hr id="hrhr">
	<input type="hidden" name="seq" value="${sports.seq}">
	<table>
		<tr>
			<td>
				<div class="bxslider">
					<div>
						<img src="<c:url value='${SportsDto.image}'/>" />
					</div>
					<div>
						<img src="<c:url value='${SportsDto.imageParts}'/>" />
					</div>
					<div><img src="<c:url value='${SportsDto.imageGif}'/>" /></div>
				</div>
			</td>
			<td>
				<ul>
					<h3>${SportsDto.exName}</h3>
					<h2><hr color="#FF2F2F"></h2>
					<li>부위 : ${SportsDto.part}</li>
					<li>운동 방법 :</li>
						<ul>
						<c:forTokens items="${SportsDto.explain}" delims="-" var="explain">
							<li>${explain}</li>
						</c:forTokens>
						</ul>
					<li><a href="<c:url value='${SportsDto.link}/'/>">다른영상
							참조하기</a></li>	
				</ul>
			</td>
		</tr>
	</table>
	<a href="<c:url value='/sports'/>">다른 운동 보러가기</a>
	<form action="/sports/SportsLike" method="post">
		<input type="hidden" name="sportsSeq" value="${sports.seq}">
		<input type="hidden" name="userId" value="${id}">
		<input type="submit" value="좋아하는 운동에 추가하기">
	</form>
</body>
</html>