<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Body Parts</title>
</head>
<body>
	<h1>부위별 운동목록화면</h1>
	<table id="mid" border="1">
		<tr>
			<th colspan="2">가슴</th>
		</tr>
		<tr>
			<td><img src="<c:url value='/images/home/img2.png'/>" /></td>
			<td>가슴 운동종류
				<ul>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">푸쉬업</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">딥</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">벤치프레스</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">덤벨플라이</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">케이블 크로스오버 플라이</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<th colspan="2">등</th>
		</tr>
		<tr>
			<td><img src="<c:url value='/images/home/img2.png'/>" /></td>
			<td>등 운동종류
				<ul>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">랫 풀다운</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">덤벨 베트 오버로우</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">시티드 로윙</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">데드리프트</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">벤트 오버로윙</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<th colspan="2">어께</th>
		</tr>
		<tr>
			<td><img src="<c:url value='/images/home/img2.png'/>" /></td>
			<td>어께 운동종류
				<ul>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">레터럴 레이즈</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">밀리터리 프레스</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">덤벨숄더 프레스</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">펙덱 레어델트 래터럴</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">시티드 프런트 프레스</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<th colspan="2">복근</th>
		</tr>
		<tr>
			<td><img src="<c:url value='/images/home/img2.png'/>" /></td>
			<td>복근 운동종류
				<ul>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">행잉 레그 레이즈</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">시티드 잭나이프</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">덤벨 사이드 벤치</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">푸쉬업</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">러시아 트위스트</a></li>
				</ul>
			</td>
		</tr>
			<tr>
			<th colspan="2">하체</th>
		</tr>
		<tr>
			<td><img src="<c:url value='/images/home/img2.png'/>" /></td>
			<td>하체 운동종류
				<ul>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">스쿼트</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">덤벨런지</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">앵글 레그프레스</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">시티드 레그 컬</a></li>
					<li><a href="<c:url value ='/sports/sportsDetails'/>">덤벨 사이드 런지</a></li>
				</ul>
			</td>
		</tr>
	</table>
</body>
</html>