<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberForm</title>
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
</main>
	<%@ include file="/jsp/shop/shopfooer/shopfooter.jsp" %>
	
</body>
</html>
