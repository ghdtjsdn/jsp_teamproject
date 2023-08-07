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
        <link rel="icon" type="image/x-icon" sizes="16x16" href="/jsp_teamproject/static/img_/favicon.ico">
    <link rel="shortcut icon" type="image/x-icon" href="/jsp_teamproject/static/img_/favicon.ico">
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
      <%@ include file="/jsp/header/header.jsp" %>
      <%@ include file="/jsp/game/header/header.jsp" %>  
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