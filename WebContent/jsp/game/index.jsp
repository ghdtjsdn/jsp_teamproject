<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />	
<c:set var="imageFolder" value="/static/images/game" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GAME</title>
<!-- 파비콘 시작 -->
<!-- <link rel="apple-touch-icon" sizes="180x180" href="./img_/apple-touch-icon.png"> -->
		<%@ include file="/jsp/game/header/favicon.jsp"%>
<!--  <link rel="manifest" href="./img_/site.webmanifest"> -->
<!-- 파비콘 끝 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"rel="stylesheet">


</head>

<style>
#main-image {
	background: url(${cpath }${imageFolder}/main.jpg) no-repeat center/cover;
	width: 25rem;
	height: 25rem;
	background-position: center;
}

footer {
	border-top: 1px solid #333;
	text-align: center;
	font-size: 18px;
	font-weight: bold;
	padding: 50px 0;
}
</style>


<body
	class="d-flex vw-100 vh-100 text-center flex-column justify-content-between">
	<!-- 화면크기 뷰포트설정/플렉스 반영(헤더메인푸터:세로로/한방에중앙정렬) -->
	<header>
		<%@ include file="/jsp/header/header.jsp"%>
		<%@ include file="/jsp/game/header/header.jsp"%>
	</header>
	<main class="d-flex flex-column align-items-center">
		<div id="main-image"></div>
	</main>
	<footer>
			<%@ include file="/jsp/game/footer/footer.jsp" %>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>