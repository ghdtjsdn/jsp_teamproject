<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"  />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- favicon -->
	<%@ include file="/jsp/golf/header/favicon.jsp" %>
<title>수강생조회 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"rel="stylesheet">
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/golf/header/header.jsp" %>

</header>
<main class="d-flex w-100 h-100 flex-column align-items-center"
      style="background-color: var(--bs-gray-300);">
<div class="d-flex flex-column text-center align-items-center" style="width: 600px;">
  <h1 class="mt-5 mb-3">수강생조회</h1>
  
  <table class="w-100 table table-bordered table-secondary">
    <tr>
      <th>수강월</th>
      <th>회원번호</th>
      <th>회원명</th>
      <th>강의명</th>
      <th>강의장소</th>
      <th>수강료</th>
      <th>등급</th>
    </tr>
  <c:forEach var="member" items="${memberList}">
    <tr>
      <td><fmt:parseDate var="regist_month" value="${member.regist_month }" pattern="yyyyMM"/>
        <fmt:formatDate value="${regist_month }" pattern="yyyy년MM월" /></td>
      <td>${member.c_no }</td>
      <td>${member.c_name }</td>
      <td>${member.class_name }</td>
      <td>${member.class_area }</td>
      <td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${member.tuition}"/></td>
      <td>${member.grade }</td>
    </tr>
  </c:forEach>
  </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> 
</main>
<footer>
  <%@ include file="/jsp/golf/footer/footer.jsp" %>
</footer>
</body>
</html>