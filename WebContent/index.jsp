<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GAME</title>
    <!-- 파비콘 시작 -->
    <!-- <link rel="apple-touch-icon" sizes="180x180" href="./img_/apple-touch-icon.png"> -->
    <link rel="icon" type="image/x-icon" sizes="16x16" href="img_/favicon.ico">
    <link rel="shortcut icon" type="image/x-icon" href="img_/favicon.ico">
   <!--  <link rel="manifest" href="./img_/site.webmanifest"> -->
    <!-- 파비콘 끝 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>    

    <script>
        function lottoNumbers() {
            const numbers = [];
            while (numbers.length < 6) {
                const randomNumber = Math.floor(Math.random() * 45) + 1;
                if (!numbers.includes(randomNumber)) {
                    numbers.push(randomNumber);
                }
            }
  
            const balls = document.getElementsByClassName("ball");
            for (let i = 0; i < balls.length; i++) {
                balls[i].textContent = numbers[i]; 
            }
        }
  
        window.onload = lottoNumbers;
    </script>
</head>

<style>
  #main-image { background: url(./img_/main.jpg) no-repeat center/cover ; width: 25rem; height: 25rem; background-position: center; }
  footer { border-top: 1px solid #333; text-align: center; font-size: 18px; font-weight: bold; padding: 50px 0; }
</style>


<body class= "d-flex vw-100 vh-100 text-center flex-column justify-content-between"> 
     <!-- 화면크기 뷰포트설정/플렉스 반영(헤더메인푸터:세로로/한방에중앙정렬) -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
              <a class="navbar-brand" href="index.jsp">게임</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                  <li class="nav-item">
                    <a class="nav-link" href="rsp.jsp">가위바위보</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="lotto.jsp">로또</a>
                  </li>
                  <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Link
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li><a class="dropdown-item" href="#">Another action</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Link</a>
                  </li> -->
                </ul>
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div>
            </div>
          </nav>
    </header>
    <main class="d-flex flex-column align-items-center"><div id="main-image"></div></main>
	<header></header>
    
</body>
</html>