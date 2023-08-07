<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GAME</title>
        <link rel="icon" type="image/x-icon" sizes="16x16" href="/jsp_teamproject/static/img_/favicon.ico">
    <link rel="shortcut icon" type="image/x-icon" href="/jsp_teamproject/static/img_/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>    
</head>

<style>
  main { background: url(jsp_teamproject/static/img_/main.png) no-repeat; width: 100vw; height: 100vh; background-position: center; }
  footer { border-top: 1px solid #333; text-align: center; font-size: 18px; font-weight: bold; padding: 50px 0; }
</style>


<body class= "d-flex vw-100 vh-100 text-center flex-column justify-content-between"> 
     <!-- 화면크기 뷰포트설정/플렉스 반영(헤더메인푸터:세로로/한방에중앙정렬) -->
    <header>
      <%@ include file="/jsp/header/header.jsp" %>
      <%@ include file="/jsp/game/header/header.jsp" %>  
    </header>


    <main>
    <div class = "d-flex justify-content-evenly">
        
        <div id = "" class="card" style="width: 18rem;">
            <div class="img"><img id = "YOU" src = "/jsp_teamproject/static/img_/rock.jpg" style="width:14rem; height:14rem;"></div>
            <div class="card-body">
                <p>YOU</p>
                <button type="button" onclick="userChoice('가위')">가위</button>
                <button type="button" onclick="userChoice('바위')">바위</button>
                <button type="button" onclick="userChoice('보')">보</button>
            </div>
          </div>
         
        <div id = "JUDGE" class="card" style="width: 18rem;">
            <div class="img"><img id = "JUDGE" src = "/jsp_teamproject/static/img_/cinnamoroll.jpg" style="width:14rem; height:14rem;" ></div>
            <div class="card-body">
                <p>심판</p>
                <p id="result"></p>
            </div>
        </div>
    
        <div id = "COMPUTER" class="card" style="width: 18rem;">
            <div class="img"><img id = "COM" src = "/jsp_teamproject/static/img_/rock.jpg" style="width:14rem; height:14rem;"></div>
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
            document.querySelector("#YOU").src='/jsp_teamproject/static/img_/sissor.jpg';
        } else if(user ==='바위'){
            document.querySelector("#YOU").src='/jsp_teamproject/static/img_/rock.jpg';
        } else { document.querySelector("#YOU").src='/jsp_teamproject/static/img_/paper.jpg'; }

        if(computer === '가위'){
            document.querySelector("#COM").src='/jsp_teamproject/static/img_/sissor.jpg';
        } else if(computer ==='바위'){
            document.querySelector("#COM").src='/jsp_teamproject/static/img_/rock.jpg';
        } else { document.querySelector("#COM").src='/jsp_teamproject/static/img_/paper.jpg'; }



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