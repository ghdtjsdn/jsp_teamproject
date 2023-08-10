<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value=""/>
<c:set var="imageFolder" value="${cPath }/static/images" />
<c:set var="cssFolder" value="${cPath }/static/css" />
<c:set var="jsFolder" value="${cPath }/static/js" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- favicon -->
<link rel="shortcut icon" href="${imageFolder }${subPath }/favicon.png" type="image/x-icon">
<link rel="icon" href="${imageFolder }${subPath }/favicon.png" type="image/x-icon">
<title>JSP / Servlet Project</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${cssFolder }${subPath }/index.css" rel="stylesheet"/>
</head>
<body class="d-flex w-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
</header>
<main class="d-flex h-100 flex-column justify-content-center align-items-center"
      style="background-color: var(--bs-gray-300);">
  <div class="p-5">
    <h1>JSP / Servlet 팀 프로젝트</h1>
  </div>
  <div class="p-5">
    <h2>조원 : 박정암, 오동하, 유주은, 이원건, 홍선우 </h2>
  </div>
</main>
<footer>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>