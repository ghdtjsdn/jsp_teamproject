<!-- member_tbl_02
이름       널?       유형           
-------- -------- ------------ 
CUSTNO   NOT NULL NUMBER(6)    
CUSTNAME          VARCHAR2(20) 
PHONE             VARCHAR2(13) 
ADDRESS           VARCHAR2(60) 
JOINDATE          DATE         
GRADE             CHAR(1)      
CITY              CHAR(2)

money_tbl_02
이름      널? 유형          
------- -- ----------- 
CUSTNO     NUMBER(6)   
SALENOL    NUMBER(8)   
PCOST      NUMBER(8)   
AMOUNT     NUMBER(4)   
PRICE      NUMBER(8)   
PCODE      VARCHAR2(4) 
SDATE      DATE  --> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
<header>
	<h1>쇼핑몰 회원관리 ver 1.0</h1>
</header>
<nav>

	<a href="join.jsp">회원등록</a>
	<a href="member.jsp">회원목록조회/수정</a>
	<a href="Sale.jsp">회원매출조회</a>
	<a href="index.jsp">홈으로 .</a>
</nav>

<footer>
	<p>HRDKOREA Copyright 2023 All rights reserved. Human Resources Development Service of Korea </p>
</footer>
</body>
</html>