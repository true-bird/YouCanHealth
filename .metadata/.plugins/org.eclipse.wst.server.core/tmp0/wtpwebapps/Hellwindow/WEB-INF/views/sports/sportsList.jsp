<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Body Parts</title>
	<link rel="stylesheet" href="<c:url value='/css/sports.css'/>" />
</head>
<body>
	<br>
	<!-- 가슴 -->

	<h2>가슴</h2>
	<hr id="hrhr">
	<table>
		<tr>
			<td>
				<table>
					<tr>
						<td><img
							src="<c:url value='/images/sports/sports_prats/chest_parts.jpg'/>">
						</td>
					</tr>
				</table>
			</td>

			<td>
				<table>
					<h3>운동 리스트</h3>
					<h2>
						<hr color="#FF2F2F">
					</h2>
					<c:forEach var="chest" items="${chest}" varStatus="status">
						<input type="hidden" name="seq" value="${chest.seq}">
						<input type="hidden" name="imageParts"
							value="${chest.imageParts}">
						<tr>
							<td><a
								href="<%=contextPath%>/sports/sportsDetails?seq=${chest.seq}">${chest.exName}</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			<td>
		</tr>
	</table>
	<br>
	<!-- 등 -->
	<h2>등</h2>
	<hr id="hrhr">
	<table>
		<tr>
			<td>
				<table>
					<tr>
						<td><img 
							src="<c:url value='/images/sports/sports_prats/back_parts.jpg'/>">
						</td>
					</tr>
				</table>
			<td>
				<table>
					<h3>운동 리스트</h3>
					<h2>
						<hr color="#FF2F2F">
					</h2>
					<c:forEach var="back" items="${back}" varStatus="status">
						<input type="hidden" name="seq" value="${back.seq}">
						<tr>
							<td><a
								href="<%=contextPath%>/sports/sportsDetails?seq=${back.seq}">${back.exName}</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>
	<!-- 어깨 -->
	<h2>어깨</h2>
	<hr id="hrhr">
	<table>
		<tr>
			<td>
				<table>
					<tr>
						<td><img 
							src="<c:url value='/images/sports/sports_prats/shoulder_parts.jpg'/>"></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<h3>운동 리스트</h3>
					<h2>
						<hr color="#FF2F2F">
					</h2>
					<c:forEach var="shoulder" items="${shoulder}" varStatus="status">
						<input type="hidden" name="seq" value="${shoulder.seq}">
						<tr>
							<td><a
								href="<%=contextPath%>/sports/sportsDetails?seq=${shoulder.seq}">${shoulder.exName}</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>
	<!-- 복부 -->
	<h2>복부</h2>
	<hr id="hrhr">
	<table>
		<tr>
			<td>
				<table>
					<tr>
						<td><img 
							src="<c:url value='/images/sports/sports_prats/abs_parts.jpg'/>"></td>
					</tr>
				</table>
			</td>
			<td>
				<h3>운동 리스트</h3>
				<h2>
					<hr color="#FF2F2F">
				</h2>
				<table>
					<c:forEach var="abs" items="${abs}" varStatus="status">
						<input type="hidden" name="seq" value="${abs.seq}">
						<tr>
							<td><a
								href="<%=contextPath%>/sports/sportsDetails?seq=${abs.seq}">${abs.exName}</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>
	<!-- 하체 -->
	<h2>하체</h2>
	<hr id="hrhr">
	<table>
		<tr>
			<td>
				<table>
					<tr>
						<td><img 
							src="<c:url value='/images/sports/sports_prats/lower_parts.jpg'/>"></td>
					</tr>
				</table>
			</td>
			<td>
				<h3>운동 리스트</h3>
				<h2>
					<hr color="#FF2F2F">
				</h2>
				<table>
					<c:forEach var="lower" items="${lower}" varStatus="status">
						<input type="hidden" name="seq" value="${lower.seq}">
						<tr>
							<td><a
								href="<%=contextPath%>/sports/sportsDetails?seq=${lower.seq}">${lower.exName}</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>