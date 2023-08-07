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
        <link rel="icon" type="image/x-icon" sizes="16x16" href="img_/favicon.ico">
    <link rel="shortcut icon" type="image/x-icon" href="img_/favicon.ico">
    <!-- 파비콘 끝 -->
    <!-- Bootstrap CSS -->
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
            const ballNums = [];
            while( ballNums.length <6){
                const randomNum = parseInt(Math.random() * 6)+1;
                if (!ballNums.includes(randomNum)) {
                  ballNums.push(randomNum);
                }
            }
            const balls = document.getElementsByClassName("ball"); /* 번호를 생성하고 해당번호를 로또 번호 공에 표시하는 역활 */
          for (let i = 0; i < balls.length; i++) {

              const str = "ball" + ballNums[i];
              balls[i].className = "ball";
              balls[i].classList.add(str);
              
              balls[i].textContent = numbers[i]; 
          }
        }
  
        window.onload = lottoNumbers;
    </script>
</head>

<style>
.ball { display: flex; justify-content: center; align-items: center; width: 150px; height: 150px; font-size: 28px; border-radius: 100%; text-align: center; vertical-align: middle; color: #fff; font-weight: bold; text-shadow: 0px 0px 3px rgba(73, 57, 0, .8); margin: 0 20px; }

.ball1 {
    background: #ffdf88;
}
.ball2 {
    background: #89c0ff;
}
.ball3 {
    background: #ff9e9e;
}
.ball4 {
    background: #d47dff;
}
.ball5 {
    background: #bbff94;
}
.ball6 { background: #6fffb9; }

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


    <main>
      <div class = "d-flex justify-content-center" style="font-family: gsm;" >
      <div class='ball'></div>
      <div class='ball'></div>
      <div class='ball'></div>
      <div class='ball'></div>
      <div class='ball'></div>
      <div class='ball'></div>
     </div>
     <button onclick="lottoNumbers()">
      button
     </button>
    </main>

     


    <footer>
        Copyright 2023. June Yu. All rights reserved
    </footer>
    
</body>
</html>