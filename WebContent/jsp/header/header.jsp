<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="jsFolder" value="/static/js" />
<!-- <!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인 헤더</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"rel="stylesheet">
</head>
<body> -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="${cpath }/index.do">메인 페이지</a>
    <button class="navbar-toggler" type="button"
      data-bs-toggle="collapse" data-bs-target="#mainNavbarScroll"
      aria-controls="navbarScroll" aria-expanded="false"
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mainNavbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
        style="-bs-scroll-height: 100px;">
        <li class="nav-item"><a id="shop-page" class="nav-link"
          href="${cPath }/shop">쇼핑몰</a></li>
        <li class="nav-item"><a id="vote-page" class="nav-link"
          href="${cPath }/vote">투표</a></li>
        <li class="nav-item"><a id="golf-page" class="nav-link"
          href="${cPath }/golf">골프장</a></li>
        <li class="nav-item"><a id="game-page" class="nav-link"
          href="${cPath }/game">게임</a></li>
      </ul>
    </div>
  </div>
</nav>
<script src="${cPath }${jsFolder }/header/header.js"></script>
<!-- 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>  
</body>
</html> -->