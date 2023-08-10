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
<title>memberForm</title>
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
<h2 >쇼핑몰회원관리 프로그램</h2>

	<table border="1" style="width:800px; margin-left: auto; margin-right: auto; text-align: center;">
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
<footer>
	<%@ include file="/jsp/shop/shopfooer/shopfooter.jsp" %>

</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>  	
</body>
</html>
