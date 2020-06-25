<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.chkOk {
    	color: black;
		background-color:green;
		border: 0;
		outline: 0;
	}
	.chkFail {
		background-color:none;
	}
	body {
	font-size: 25px;
		text-align:center;
		background-color: #1F2324;
		color: #ffffff;
}
</style>
</head>

<script>
$(document).ready(function() {
	$("#btnreg").click(function () {
		var pwd1 = $("#password").val();
		var pwd2 = $("#repassword").val();
		var name = $("#name").val();
		var birth = $("#birth").val();
		var id = $("#id").val();
		if(id == "")
		{
			alert("아이디를 입력해주세요");
			return false;
		}
		else if(pwd1 == "")
		{
			alert("패스워드를 입력해주세요");
			return false;
		}
		else if(pwd2 == "")
		{
			alert("패스워드(확인) 입력해주세요");
			return false;
		}
		
		else if(pwd1 != pwd2)
		{
			alert("패스워드와 패스워드(확인)이 다릅니다.");
			return false;
		}
		else if(name == "")
		{
			alert("이름을 입력해주세요");
			return false;
		}
		else if(birth == "")
		{
			alert("생년월일을 입력해주세요");
			return false;
		}
	});
	
	
	$("#id").on('input',function () {
		$("#idChk").attr("class","chkFail");
		$("#idChk").val("중복체크");
		$("#idChk").attr('disabled', false);
	});
	
	
	$("#idChk").click(function () {
		var id = $("#id").val();
		if(id == "")
		{
			alert("아이디를 입력해주세요");
			return false;
		}
		$.ajax({
			url : "idChk",
			type : "post",
			dataType : "json",
			data : {"id" : $("#id").val()},
			success : function(data){
				if(data == 1){
					alert("중복된 아이디입니다.");
				}else if(data == 0){
					alert("사용가능한 아이디입니다.");
					$("#idChk").val("체크완료");
					$("#idChk").attr("class","chkOk");
					$("#idChk").attr('disabled', true); // or false
				}
			}
		})
	});
	
	
	$("form").submit(function(e) {
		if($("#idChk").attr("class") != 'chkOk') {
			alert("중복 체크를 해주세요")
			e.preventDefault();
		}
	});
	
});

</script>
<body>
<div style="color: #ffffff; font-size: 30px;">회원가입</div>
	<hr>
	

	<br>
	<br>
	<br>
	<form action="<%=contextPath%>/signUpResult" method="post">
	<input type="hidden" value="">
	<table style="background-color: #364156; ">
	<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td>&nbsp&nbsp&nbsp</td><td>아이디</td><td> <input style="font-size: 30px;"type="text" id="id" name="id" size="10" minlength="5" maxlength="10" ></td>

		<td>
			<input  style="font-size: 25px;" type="button" id="idChk" class="chkFail" value="중복체크">
		</td><td>&nbsp&nbsp&nbsp</td></tr>  
<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td>&nbsp&nbsp&nbsp</td><td>패스워드</td><td colspan="2"><input style="font-size: 30px;"type="password"id="password"name="password" size="20" minlength="5" maxlength="10"></td><td>&nbsp&nbsp&nbsp</td></tr> 
		<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td>&nbsp&nbsp&nbsp</td><td>패스워드(확인)</td><td colspan="2"><input style="font-size: 30px;"type="password"id="repassword" name="repassword" size="20" maxlength="10" minlength="5" ></td><td>&nbsp&nbsp&nbsp</td></tr>
<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td>&nbsp&nbsp&nbsp</td><td>이름</td><td colspan="2"><input style="font-size: 30px;"type="text" id="name" name="name" size="20" maxlength="21"> </td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td>&nbsp&nbsp&nbsp</td><td>생년월일</td><td colspan="2"><input style="font-size: 30px;"type="date" id="birth" name="birth" min="1960-01-01" max="2020-07-01">
		<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td>&nbsp&nbsp&nbsp</td><td>성별</td><td colspan="2"><input style="font-size: 30px;"type="radio" name="sex" value="M" checked>남자<input type="radio" name="sex" value="F">여자 
		<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td>&nbsp&nbsp&nbsp</td><td>운동경력</td><td colspan="2"><input 	style="font-size: 30px;"type="radio" name="exerdate" checked value="0">
		처음<input type="radio" name="exerdate" value="1">1~6개월
		
		<input	type="radio" name="exerdate" value="2">6~12개월 
		
		<input	type="radio" name="exerdate" value="3">1년 이상  </td><td>&nbsp&nbsp&nbsp</td></tr> 
		<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
		<tr><td colspan="5"><table>
		<tr><td>&nbsp&nbsp&nbsp</td><td><input style="font-size: 25px;" type="submit" value="등록" id="btnreg">
		</td><td>&nbsp&nbsp&nbsp</td><td><input	style="font-size: 25px;" type="reset" value="초기화"></td></tr>
	<tr><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td><td>&nbsp&nbsp&nbsp</td></tr>
	</table></td></tr></table>
	</form>

</body>
</html>