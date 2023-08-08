<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="subpath" value="/golf" />    
<!-- <!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>헤더</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body> -->
  <div id="golf-header-container" class="h-25 text-white">
    <div class="fs-1 text-center bg-dark bg-gradient p-5">
      골프연습장 회원관리 프로그램 ver 1.0
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
     <div class="container-fluid">
      <ul id="" class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
        style="-bs-scroll-height: 100px;">
        <li class="nav-item"><a id="" class="nav-link"
            href="${cpath }${subpath }/teacher-list.do">강사조회</a></li>
        <li class="nav-item"><a id="" class="nav-link"
            href="${cpath }${subpath }/regist-page.do">수강신청</a></li>
        <li class="nav-item"><a id="" class="nav-link"
            href="${cpath }${subpath }/member-list.do">회원정보조회</a></li>
        <li class="nav-item"><a id="" class="nav-link"
            href="${cpath }${subpath }/sales-result.do">강사매출현황</a></li>
        <li class="nav-item"><a id="" class="nav-link"
            href="${cpath }${subpath }/index.do">홈으로</a></li>
      </ul>
      </div>
    </nav>
  </div>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>    
</body>
</html> -->