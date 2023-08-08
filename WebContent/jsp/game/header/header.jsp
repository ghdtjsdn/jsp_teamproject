<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게임 헤더</title>
</head>
<body> -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="./index.do">게임</a>
    <button class="navbar-toggler" type="button"
      data-bs-toggle="collapse" data-bs-target="#gameNavbarScroll"
      aria-controls="navbarScroll" aria-expanded="false"
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="gameNavbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
        style="-bs-scroll-height: 100px;">
        <li class="nav-item"><a class="nav-link" href="./rsp.do">가위바위보</a>
        </li>
        <li class="nav-item"><a class="nav-link" href="./lotto.do">로또</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search"
          placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<!-- </body>
</html> -->