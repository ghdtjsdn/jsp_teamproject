<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>

<style>
	header{
		background-color: #6C3;
		width: 100%;
		text-align: center;
		color: white;
		line-height: 100px;
		height:100px;
		padding: 0;
		margin: 0;
	}
	nav{
		background-color: #CC3;
		width: 100%;
		height: 50px;
		line-height: 50px;
		margin: 0;
		padding: 5px;
	
	}
	
	section{
	background-color: #c0c0c0;
	height:100%;
	}
	
	footer{
		background-color: #6C3;
		text-align: center;
		color: white;
		height: 100px;
		line-height: 100px;
		bottom: auto;
	}
	
	
</style>

<script>
function checkForm(f) {
	if(f.custname.value.length == 0){
		alert("회원성명이 입력되지 않았습니다.");
		f.custname.focus();
		return false;
	}
	if(f.phone.value.length == 0){
		alert("회원전화번호가 입력되지 않았습니다.");
		f.phone.focus();
		return false;
	}
	if(f.address.value.length == 0){
		alert("회원주소가 입력되지 않았습니다.");
		f.address.focus();
		return false;
	}
	if(f.grade.value.length == 0){
		alert("고객등급이 입력되지 않았습니다.");
		f.grade.focus();
		return false;
	}
	if(f.city.value.length == 0){
		alert("도시코드가 입력되지 않았습니다.");
		f.city.focus();
		return false;
	}	
}
</script>

</head>


<body>

<header>쇼핑몰 회원관리 ver1.0</header>

<nav>
	<a href="joinForm.do">회원등록 </a>
	<a href="memberForm.do">회원목록조회/수정 </a>
	<a href="SaleForm.do">회원매출조회 </a>
	<a href="index.jsp">홈으로 .</a>
</nav>

<h2 style="text-align: center;">쇼핑몰회원관리 프로그램</h2>

	<table width="500" border="1" style="margin-left: auto; margin-right: auto; text-align: center;">
	<form action="joinProcess.do" method="post" onsubmit="return checkForm(this)">
		
		
		<tr>
			<td>회원성명</td>
			<td><input type="text" name="custname" maxlength="10"></td>
		</tr>
		<tr>
			<td>회원전화</td>
			<td><input type="text" name="phone" maxlength="14"></td>
		</tr>
		<tr>
			<td>회원주소</td>
			<td><input type="text" name="address" maxlength="30"></td>
		</tr>
		<tr>
			<td>고객등급(A:VIP,B:일반,C:직원)</td>
			<td><input type="text" name="grade" maxlength="1"></td>
		</tr>
		<tr>
			<td>도시코드</td>
			<td><input type="number" name="city" maxlength="2"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="등록">
			&nbsp;
			<input type="button" onclick="location.href='memberForm.do'" value="조회" >
			</td>
		</tr>
	</form>
	</table>

</body>
</html>
