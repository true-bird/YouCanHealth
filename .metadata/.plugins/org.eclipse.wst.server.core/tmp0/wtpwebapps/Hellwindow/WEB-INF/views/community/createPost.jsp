<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
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
</head>
<body>
	<hr>
	<form action="<%=contextPath%>/community/WritingContent" method="post">
		<input type="hidden" name="id" value="<%=myId3%>">
		<table style="padding-top: 50px" align="center" width="1000"
			border="1" cellpadding="2">
			<tr>
				<td height=20 align=center> 글쓰기</td>
			</tr>
			<tr>
				<td>
					<table class="table2">
						<tr>
							<td></td>
							<td>분류:<select Size="1" id="category" name="category"
								onchange="work(this.value,'${userDto.manager}')">
									<optgroup label="카테고리">
										<option value="잡담" selected>잡담</option>
										<option value="운동꿀팁">운동꿀팁</option>
										<option value="공지사항">공지사항</option>
									</optgroup>
							</select></td>
						</tr>

						<tr>
							<td>제목</td>
							<td><input type=text name="title" size=60 required></td>
						</tr>

						<tr>
							<td>내용</td>
							<td><textarea name="content" cols=85 rows=15 required></textarea></td>
						</tr>
					</table>
					<input type="submit" value="확인">
					<a href="<c:url value='/community' />">
						<input type="button" value="취소">
					</a>
				</td>
			</tr>
		</table>
	</form>


</body>
</html>