<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GAME</title>
        <link rel="icon" type="image/x-icon" sizes="16x16" href="img_/favicon.ico">
    <link rel="shortcut icon" type="image/x-icon" href="img_/favicon.ico">
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
  main { background: url(/Project/RSP_YJE/img_/main.png) no-repeat; width: 100vw; height: 100vh; background-position: center; }
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
    <div class = "d-flex justify-content-evenly">
        
        <div id = "" class="card" style="width: 18rem;">
            <div class="img"><img id = "YOU" src = "img_/rock.jpg" style="width:14rem; height:14rem;"></div>
            <div class="card-body">
                <p>YOU</p>
                <button type="button" onclick="userChoice('가위')">가위</button>
                <button type="button" onclick="userChoice('바위')">바위</button>
                <button type="button" onclick="userChoice('보')">보</button>
            </div>
          </div>
         
        <div id = "JUDGE" class="card" style="width: 18rem;">
            <div class="img"><img id = "JUDGE" src = "img_/cinnamoroll.jpg" style="width:14rem; height:14rem;" ></div>
            <div class="card-body">
                <p>심판</p>
                <p id="result"></p>
            </div>
        </div>
    
        <div id = "COMPUTER" class="card" style="width: 18rem;">
            <div class="img"><img id = "COM" src = "img_/rock.jpg" style="width:14rem; height:14rem;"></div>
            <div class="card-body">
                <p>COM</p>
            </div>
          </div>

    </div>      
    <br>

    <script>
      // 가위바위보 게임
      function userChoice(user) {
        const choices = ['가위', '바위', '보'];
        const computer = choices[Math.floor(Math.random() * choices.length)];
        let result = '';


        if(user === '가위'){
            document.querySelector("#YOU").src='img_/sissor.jpg';
        } else if(user ==='바위'){
            document.querySelector("#YOU").src='img_/rock.jpg';
        } else { document.querySelector("#YOU").src='img_/paper.jpg'; }

        if(computer === '가위'){
            document.querySelector("#COM").src='img_/sissor.jpg';
        } else if(computer ==='바위'){
            document.querySelector("#COM").src='img_/rock.jpg';
        } else { document.querySelector("#COM").src='img_/paper.jpg'; }



        if (user === computer) {
            result = '비겼습니다!';
        } else if (
        (user === '가위' && computer === '보') ||
        (user === '바위' && computer === '가위') ||
        (user === '보' && computer === '바위')
        ) {
        result = '사용자가 이겼습니다!';
        } else if (
        (user === '가위' && computer === '바위') ||
        (user === '바위' && computer === '보') ||
        (user === '보' && computer === '가위')
        ) {
        result = '컴퓨터가 이겼습니다!';
        }

        const resultElement = document.getElementById("result");
        
        resultElement.textContent = result;
      }
    </script>

  </main>


    <footer>
        Copyright 2023. June Yu. All rights reserved
    </footer>
    
</body>
</html>