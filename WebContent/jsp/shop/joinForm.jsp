<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/shop"/>
<c:set var="currentPath" value="${cPath }${subPath }" />
<c:set var="imageFolder" value="${cPath }/static/images${subPath }" />
<c:set var="cssFolder" value="${cPath }/static/css${subPath }" />
<c:set var="jsFolder" value="${cPath }/static/js${subPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"rel="stylesheet">
<link rel="stylesheet" href="${cssFolder }/shop.css">
<link rel="shortcut icon" href="${imageFolder }/pocketmon1.webp">

</head>

<body class="d-flex w-100 vh-100 flex-column justify-content-between">

<header>
	<%@ include file="/jsp/header/header.jsp" %>
	<%@ include file="/jsp/shop/shopheader/shopheader.jsp" %>
	<%@ include file="/jsp/shop/shopnav/shopnav.jsp" %>
</header>


<main class="d-flex text-center h-100 flex-column align-items-center p-5">
	<h2>쇼핑몰회원관리 프로그램</h2>
	<form action="${currentPath }/joinProcess.do" method="post" onsubmit="return checkForm(this)">
	<table border="1" style="width:500; margin-left: auto; margin-right: auto; text-align: center;">
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
			<td colspan="2">
				<input type="submit" value="등록">
				<input type="button" onclick="location.href='memberForm.do'" value="조회" >
			</td>
		</tr>
	</table>
	</form>
	
	</main>
	<footer>
		<%@ include file="/jsp/shop/shopfooer/shopfooter.jsp" %>
	</footer>
<script src="${jsFolder }/shop.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>  
</body>
</html>
