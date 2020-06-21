<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<script>
$(document).ready(function() {
	$("#btnreg").click(function () {
		var pwd1 = $("#password").val();
		var pwd2 = $("#repassword").val();
		
		if(pwd1 == "")
		{
			alert("패스워드를 5~10글자로 입력해주세요");
			
			return false;
		}
		else if(pwd2 == "")
		{
			alert("패스워드를 5~10글자로 입력해주세요");
			
			return false;
		}
		
		else if(pwd1 != pwd2)
		{
			alert("패스워드와 패스워드(확인)이 다릅니다.");
			return false;
		}
		
	});
});

</script>
<body>
	<br>
	<form action="<%=contextPath%>/signUpResult" method="post">
		아이디 <input type="text" id="id" name="id" size="10" maxlength="10" > 
		<br> 
		패스워드 <input type="password"id="password"name="password" size="20" min="5" maxlength="10"> 
		<br> 
		패스워드(확인)<input type="password"id="repassword" name="repassword" size="20" maxlength="10" min="5" >

		<br> 이름 <input type="text" name="name" size="20" maxlength="21"> <br>
		생년월일<input type="date" name="birth" min="1960-01-01" max="2020-07-01">
		<br> 
		성별 <input type="radio" name="sex" value="M" checked>남자<input type="radio" name="sex" value="F">여자 <br> 
		운동경력 <input 	type="radio" name="exerdate" checked value="0">
		처음 <input type="radio" name="exerdate" value="1">1~6개월 
		<input	type="radio" name="exerdate" value="2">6~12개월 
		<input	type="radio" name="exerdate" value="3">1년 이상 <br> 
		<input 	type="submit"  size="20" value="등록" id="btnreg">
		<input	type="reset" value="초기화">
	</form>
</body>
</html>