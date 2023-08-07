<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<header>
	<h1>쇼핑몰 회원관리 ver 1.0</h1>
</header>

<section>
<nav>
	<a href="joinForm.do">회원등록 </a>
	<a href="memberForm.do">회원목록조회/수정 </a>
	<a href="SaleForm.do">회원매출조회 </a>
	<a href="index.jsp">홈으로 .</a>
</nav>
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
</section>
<footer>
	<p>HRDKOREA Copyright 2023 All rights reserved. Human Resources Development Service of Korea </p>
</footer>
</body>
</html>