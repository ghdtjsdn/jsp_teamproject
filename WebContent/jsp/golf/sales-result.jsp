<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- favicon -->
	<%@ include file="/jsp/golf/header/favicon.jsp" %>
<title>강사매출현황 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"rel="stylesheet">
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/golf/header/header.jsp" %>
</header>
<main class="d-flex w-100 h-100 flex-column align-items-center"
      style="background-color: var(--bs-gray-300);">
<div class="d-flex flex-column align-items-center"  style="width:600px;">
  <h1 class="mt-5 mb-3">강사매출현황</h1>
  <table class="w-100 text-center table table-bordered table-secondary">
    <tr>
      <th>강사코드</th>
      <th>강의명</th>
      <th>강사명</th>
      <th>총매출</th>
    </tr>
  <c:forEach var="sales" items="${salesResults}">
    <tr>
      <td>${sales.teacher_code }</td>
      <td>${sales.class_name }</td>
      <td class="text-end">${sales.teacher_name }</td>
      <td class="text-end"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${sales.sale}"/></td>
    </tr>
  </c:forEach>
  </table>
</div>
</main>
<footer>
  <%@ include file="/jsp/golf/footer/footer.jsp" %>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>