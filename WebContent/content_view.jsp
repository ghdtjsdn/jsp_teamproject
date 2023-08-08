
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content_view</title>

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
	<form action="modForm.do" method="post">
		<input type="hidden" name="custno" value="${requestScope.content_view.custno}">
		<tr>
			<td>회원번호(자동발생)</td>
			<td><input type="text" name="custno" value="${requestScope.content_view.custno}"></td>
		</tr>
		<tr>
			<td>회원성명</td>
			<td><input type="text" name="custname" value="${content_view.custname}"></td>
		</tr>
		<tr>
			<td>회원전화</td>
			<td><input type="text" name="phone" value="${content_view.phone}"></td>
		</tr>
		<tr>
			<td>회원주소</td>
			<td><input type="text" name="address" value="${content_view.address}"></td>
		</tr>
		<tr>
			<td>고객등급(A:VIP,B:일반,C:직원)</td>
			<td><input type="text" name="grade" value="${content_view.grade}"></td>
		</tr>
		<tr>
			<td>도시코드</td>
			<td><input type="text" name="city" value="${content_view.city}"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정">
			&nbsp;
			&nbsp;
			<input type="button" onclick="location.href='memberForm.do'" value="조회" >
			</td>
		</tr>
	</form>
	</table>

</body>
</html>
