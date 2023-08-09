<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/vote"/>
<c:set var="currentPath" value="${cPath }${subPath }" />
<c:set var="imageFolder" value="${cPath }/static/images${subPath }" />
<c:set var="cssFolder" value="${cPath }/static/css${subPath }" />
<c:set var="jsFolder" value="${cPath }/static/js${subPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${cssFolder }/style.css"/>
</head>
<body class="d-flex w-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/vote/header/header.jsp" %>
</header>
<main class="d-flex h-100 flex-column align-items-center">
<h2>총선거투표 홈페이지에 오신 것을 환영합니다.</h2>
</main>
<footer>
  <%@ include file="/jsp/vote/footer/footer.jsp" %>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${jsFolder}/script.js"></script>
</body>
</html>