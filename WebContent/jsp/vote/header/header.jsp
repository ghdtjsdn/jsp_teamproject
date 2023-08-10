<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/vote"/>
<c:set var="currentPath" value="${cPath }${subPath }" />
<c:set var="imageFolder" value="${cPath }/static/images${subPath }" />
<c:set var="cssFolder" value="${cPath }/static/css${subPath }" />
<c:set var="jsFolder" value="${cPath }/static/js${subPath }" />  
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역구의원투표</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<header> -->
<div>
  <h1 id="header"class="text-center m-0 p-5">총선거 투표</h1>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <!-- </header> -->
      <ul id="golf-nav" class="navbar-nav me-auto my-lg-0">
        <li class="nav-item"><a class="nav-link" href="${currentPath }/memberList.do">후보조회</a></li>
        <li class="nav-item"><a class="nav-link" href="${currentPath }/voteMember.do">투표하기</a></li>
        <li class="nav-item"><a class="nav-link" href="${currentPath }/voteList.do">투표검수조회</a></li>
        <li class="nav-item"><a class="nav-link" href="${currentPath }/voteResult.do">후보자등수</a></li>
        <li class="nav-item"><a class="nav-link" href="${currentPath }/main.do">홈</a></li>
      </ul>
    </div>
  </nav>
</div>
<!-- 
</body>
</html> -->