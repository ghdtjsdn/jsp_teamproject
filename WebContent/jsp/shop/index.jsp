<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/shop"/>
<c:set var="imageFolder" value="${cPath }/static/images${subPath }" />
<c:set var="cssFolder" value="${cPath }/static/css${subPath }" />
<c:set var="jsFolder" value="${cPath }/static/js${subPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"rel="stylesheet">
<link rel="stylesheet" href="${cssFolder }/shop.css">
<link rel="shortcut icon" href="${imageFolder }/pocketmon1.webp">
</head>
<body class="d-flex w-100 vh-100 flex-column justify-content-between">

	<header >
		<%@ include file="/jsp/header/header.jsp" %>
		<%@ include file="/jsp/shop/shopheader/shopheader.jsp" %>
		<%@ include file="/jsp/shop/shopnav/shopnav.jsp" %>
	</header>
	
	<main class="d-flex text-center p-5 h-100 flex-column align-items-center">
		<h2>쇼핑몰회원관리 프로그램</h2>
		<div class="text-start">
			쇼핑몰 회원정보의 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.<br/>
			프로그램 작성 순서<br/>
			1.회원정보 테이블을 생성한다.<br/>
			2.매출정보 테이블을 생성한다.<br/>
			3.회원정보,매출정보 테이블에 서시된 문제지의 참조데이터를 추가생성한다.<br/>
			4.회원정보 입력 화면 프로그램을 작성한다.<br/>
			5.회원정보 조회 프로그램을 작성한다.<br/>
			6.회원매출정보 조회 프로그램을 작성한다.<br/>
		</div>
	</main>

	<footer>
	<%@ include file="/jsp/shop/shopfooer/shopfooter.jsp" %>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>  
</body>
</html>