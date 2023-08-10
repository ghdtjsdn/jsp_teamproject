<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/shop"/>
<c:set var="currentPath" value="${cPath }${subPath }" />
<c:set var="imageFolder" value="${cPath }/static/images${subPath }" />
<c:set var="cssFolder" value="${cPath }/static/css${subPath }" />
<c:set var="jsFolder" value="${cPath }/static/js${subPath }" /> 
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shopheader</title>
<link rel="stylesheet" href="/jsp_teamproject/static/css/shop/shop.css">
</head>
<body> -->
<nav class="navbar navbar-expand-lg">
 <div class="container-fluid">
      <ul class="navbar-nav me-auto  "
        style="-bs-scroll-height: 100px;">
        <li class="nav-item"><a id="shop-page" class="nav-link"
          href="${currentPath }/joinForm.do">회원등록</a></li>
        <li class="nav-item"><a id="vote-page" class="nav-link"
          href="${currentPath }/memberForm.do">회원목록조회</a></li>
        <li class="nav-item"><a id="golf-page" class="nav-link"
          href="${currentPath }/SaleForm.do">회원매출조회</a></li>
        <li class="nav-item"><a id="game-page" class="nav-link"
          href="${currentPath }/index.do">홈으로</a></li>
      </ul>
    </div>
</nav>
<!-- </body>
</html> -->