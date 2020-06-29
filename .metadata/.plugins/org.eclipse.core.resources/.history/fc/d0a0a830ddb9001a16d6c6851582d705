<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function work(obj, manager) {
		if (obj == "공지사항" && manager == "회원") {
			alert("공지사항은  관리자만 글을 쓸수있습니다.");
			document.querySelector('#category').value = "잡담";
		}
	}
</script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/community.css?after'/>" />
<!-- (insert) -->
</head>
<body>
	<hr>
	<form action="<%=contextPath%>/community/WritingContent" method="post">
		<input type="hidden" name="id" value="<%=id%>"> <br> <br>
		<br>
		<table style="background-color: #364156;" align="center" width="1000"
			border="1" cellpadding="2">
			<tr>
				<td colspan="3" height=20 align=center
					style="font-size: 30px; background-color: #394093;">글쓰기</td>
			</tr>

			<tr>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
				<td>&nbsp&nbsp&nbsp</td>
			</tr>
			<tr>
				<td>
					<table class="table2">
						<tr>
							<td>&nbsp&nbsp&nbsp</td>
							<td colspan="2" style="text-align: center; font-size: 18px;">분류
								<select style="text-align: center; font-size: 18px;" Size="1"
								id="category" name="category"
								onchange="work(this.value,'${userDto.manager}')">
									<optgroup label="카테고리">
										<option value="잡담" selected>잡담</option>
										<option value="운동꿀팁">운동꿀팁</option>
										<option value="공지사항">공지사항</option>
									</optgroup>
							</select>
							</td>
						<tr>
							<td>&nbsp&nbsp&nbsp</td>
							<td>&nbsp&nbsp&nbsp</td>
							<td>&nbsp&nbsp&nbsp</td>
						</tr>


						<tr>
							<td>&nbsp&nbsp&nbsp</td>
							<td colspan="2" style="text-align: left; font-size: 18px;">제목
								<input style="font-size: 20px;" type=text name="title" size=60
								placeholder="이상한 글쓰지말것 " width="100%" required>
							</td>
						</tr>
						<tr>
							<td>&nbsp&nbsp&nbsp</td>
							<td>&nbsp&nbsp&nbsp</td>
							<td>&nbsp&nbsp&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp&nbsp&nbsp</td>
							<td style="text-align: left; font-size: 18px;">내용</td>
							<td><textarea name="content" cols=100 rows=20
									style="font-size: 20px;" required></textarea></td>
						</tr>
					</table> <br>
					<table>
						<tr>
							<td><input type="submit" value="확인"></td>
							<td><a href="<c:url value='/community' />"> <input
									type="button" value="취소">
							</a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>