<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/createCustomRoutine.css?after'/>" />
<script type="text/javascript"
	src="<c:url value='/js/createCustomRoutine.js'/>"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<div class="container">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">월</li>
			<li class="tab-link" data-tab="tab-2">화</li>
			<li class="tab-link" data-tab="tab-3">수</li>
			<li class="tab-link" data-tab="tab-4">목</li>
			<li class="tab-link" data-tab="tab-5">금</li>
			<li class="tab-link" data-tab="tab-6">토</li>
			<li class="tab-link" data-tab="tab-7">일</li>
		</ul>
		<hr>
		<c:forEach var="day" items="${week}" varStatus="status">
			<div id="tab-${status.count}" class="tab-content
			<c:if test="${status.count eq 1}">current</c:if>
			">
				<div class="checkBoxList">
					<table>
						<thead>
							<tr>
								<th>가슴</th>
								<th>등</th>
								<th>어깨</th>
								<th>복부</th>
								<th>하체</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><c:forEach var="chest" items="${chest}"
										varStatus="status">
										<p>
											<input type="checkbox" value="${chest.seq}">${chest.exName}
											<img src="/myHell/images/routine/infoIcon.png" class= "sportInfo">
										</p>
									</c:forEach></td>
								<td><c:forEach var="back" items="${back}"
										varStatus="status">
										<p>
											<input type="checkbox" value="${back.seq}">${back.exName}
											<img src="/myHell/images/routine/infoIcon.png" class= "sportInfo">
										</p>
									</c:forEach></td>
								<td><c:forEach var="shoulder" items="${shoulder}"
										varStatus="status">
										<p>
											<input type="checkbox" value="${shoulder.seq}">${shoulder.exName}
											<img src="/myHell/images/routine/infoIcon.png" class= "sportInfo">
										</p>
									</c:forEach></td>
								<td><c:forEach var="abs" items="${abs}" varStatus="status">
										<p>
											<input type="checkbox" value="${abs.seq}">${abs.exName}
											<img src="/myHell/images/routine/infoIcon.png" class= "sportInfo">
										</p>
									</c:forEach></td>
								<td><c:forEach var="lower" items="${lower}"
										varStatus="status">
										<p>
											<input type="checkbox" value="${lower.seq}">${lower.exName}
											<img src="/myHell/images/routine/infoIcon.png" class= "sportInfo">
										</p>
									</c:forEach></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</c:forEach>
	</div>
	<hr>
	<div class="myRoutine">
		<p>나만의 루틴
			<input id="routineName" type="text" placeholder="루틴 이름">
		</p>
		<div class="selectResult">
			<table>
				<thead>
					<tr>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
						<th>일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<ul id="tab-1-result">
							</ul>
						</td>
						<td>
							<ul id="tab-2-result">
							</ul>
						</td>
						<td>
							<ul id="tab-3-result">
							</ul>
						</td>
						<td>
							<ul id="tab-4-result">
							</ul>
						</td>
						<td>
							<ul id="tab-5-result">
							</ul>
						</td>
						<td>
							<ul id="tab-6-result">
							</ul>
						</td>
						<td>
							<ul id="tab-7-result">
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<br>
	<form id="sportsInfo" method="post"
		action="<c:url value='/'/>sports/sportsDetails">
		<input type="hidden" id="msg" name="msg">
		<input type="hidden" id="sportsSeq" name="seq">
	</form>
	<form id="routineEnroll" method="post" action="<c:url value='/'/>routine/checkCustomRoutine">
		<input type="hidden" name="routineName">
		<input type="hidden" name="userId" value="${userId}">
		<input type="hidden" name="target">
		<input id="floatingButton" type="submit" value="루틴 생성">
	</form>
	<br>
	<br>
	<br>
</body>
</html>