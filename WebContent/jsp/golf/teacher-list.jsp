<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- favicon -->
<link rel="shortcut icon" href="/jsp_teamproject/static/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="/jsp_teamproject/static/images/favicon.ico" type="image/x-icon">
<title>강사조회 페이지</title>
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/golf/header/header.jsp" %>
</header>
<main class="d-flex w-100 h-100 flex-column align-items-center"
      style="background-color: var(--bs-gray-300);">
<div class="d-flex flex-column align-items-center" style="width:600px;">
  <h1 class="mt-5 mb-3">강사조회</h1>
  <table class="table text-center table-bordered table-secondary w-100">
    <tr>
      <th>강사코드</th>
      <th>강사명</th>
      <th>강의명</th>
      <th>수강료</th>
      <th>강사자격취득일</th>
    </tr>
  <c:forEach var="teacher" items="${teacherList}">
    <tr>
      <td>${teacher.teacher_code }</td>
      <td>${teacher.teacher_name }</td>
      <td>${teacher.class_name }</td>
      <td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${teacher.class_price }"/></td>
      <td><fmt:parseDate var="teacher_regist_date" value="${teacher.teacher_regist_date }" pattern="yyyyMMdd"/>
      <fmt:formatDate value="${teacher_regist_date }" pattern="yyyy년MM월dd일" /></td>
    </tr>
  </c:forEach>
  </table>
</div>

</main>
<footer>
  <%@ include file="/jsp/golf/footer/footer.jsp" %>
</footer>
</body>
</html>