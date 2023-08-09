<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"rel="stylesheet">
<link rel="stylesheet" href="/jsp_teamproject/static/css/shop/shop.css">
<link rel="shortcut icon" href="/jsp_teamproject/static/images/shop/pocketmon1.webp">

</head>

<body>

<header>
	<%@ include file="/jsp/header/header.jsp" %>
	<%@ include file="/jsp/shop/shopheader/shopheader.jsp" %>
</header>

<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
	<%@ include file="/jsp/shop/shopnav/shopnav.jsp" %>
</nav>

<main class="d-flex h-100 flex-column align-items-center"
      style="background-color: var(--bs-gray-300);">
<h2 style="text-align: center;">쇼핑몰회원관리 프로그램</h2>

	<table width="500" border="1" style="margin-left: auto; margin-right: auto; text-align: center;">
	<form action="/jsp_teamproject/shop/joinProcess.do" method="post" onsubmit="return checkForm(this)">
		
		
		<tr>
			<td>회원성명</td>
			<td><input type="text" name="custname" maxlength="10"></td>
		</tr>
		<tr>
			<td>회원전화</td>
			<td><input type="text" name="phone" maxlength="14" placeholder="예)010-1234-4567"></td>
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
	
	</main>

	<%@ include file="/jsp/shop/shopfooer/shopfooter.jsp" %>

<script src="/jsp_teamproject/static/js/shop/shop.js"></script>

</body>
</html>
