<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- favicon -->
<link rel="shortcut icon" href="/jsp_teamproject/static/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="/jsp_teamproject/static/images/favicon.ico" type="image/x-icon">
<title>골프연습장 메인 페이지</title>
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
  crossorigin="anonymous" />
  
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/golf/header/header.jsp" %>
</header>

<main class="d-flex h-100 flex-column align-items-center"
      style="background-color: var(--bs-gray-300);">
  <div>
    <h1 class="mt-5 mb-3">골프연습장 회원관리 프로그램</h1>
  </div>
</main>
<footer>
  <%@ include file="/jsp/golf/footer/footer.jsp" %>
</footer>

  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
</body>
</html>
