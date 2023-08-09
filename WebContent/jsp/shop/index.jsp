<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/jsp_teamproject/static/css/shop/shop.css">
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">

<header>
	<%@ include file="/jsp/header/header.jsp" %>
	<%@ include file="/jsp/shop/shopheader/shopheader.jsp" %>
</header>
<section>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
	<%@ include file="/jsp/shop/shopnav/shopnav.jsp" %>
</nav>

<main class="d-flex h-100 flex-column align-items-center"
      style="background-color: var(--bs-gray-300);">
	<h2 style="text-align: center;">쇼핑몰회원관리 프로그램</h2>
	<pre>
		쇼핑몰 회원정보의 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.
		프로그램 작성 순서
		1.회원정보 테이블을 생성한다.
		2.매출정보 테이블을 생성한다.
		3.회원정보,매출정보 테이블에 서시된 문제지의 참조데이터를 추가생성한다.
		4.회원정보 입력 화면 프로그램을 작성한다.
		5.회원정보 조회 프로그램을 작성한다.
		6.회원매출정보 조회 프로그램을 작성한다.
	</pre>
	
</main>
</section>

<footer>
	<%@ include file="/jsp/shop/shopfooer/shopfooter.jsp" %>
</footer>
</body>
</html>