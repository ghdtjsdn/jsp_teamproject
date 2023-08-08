<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberForm</title>

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

	<table width="800" border="1" style="margin-left: auto; margin-right: auto; text-align: center;">
	
		<tr>
			<td>회원번호</td>
			<td>회원성명</td>
			<td>연락처</td>
			<td>주소</td>
			<td>가입일자</td>
			<td>고객등급</td>
			<td>도시코드</td>
		</tr>
		
		
		<c:forEach var="dto" items="${list}">
         <tr>
            <td>
	            <a href="content_view.do?custno=${dto.custno}">${dto.custno}</a>
            </td>
            <td>${dto.custname}</td>
            <td>${dto.phone}</td>
            <td>${dto.address}</td>
            <td>${dto.joindate}</td>
            <td>${dto.grade}</td>
            <td>${dto.city}</td>            
         </tr>
      </c:forEach>
      
	</table>
	
	
</body>
</html>
