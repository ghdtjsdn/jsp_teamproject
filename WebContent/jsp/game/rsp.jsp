<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }"/>
<c:set var="subPath" value="/game" />
<c:set var="imageFolder" value="/static/images${subPath }" />
<c:set var="jsFolder" value="/static/js${subPath }" />
<c:set var="cssFolder" value="/static/css${subPath }" />    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GAME</title>
        <%@ include file="/jsp/game/header/favicon.jsp"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="${cPath }${cssFolder}/rsp.css" rel="stylesheet"/>
</head>



<body class= "d-flex vw-100 vh-100 text-center flex-column justify-content-between"> 
     <!-- 화면크기 뷰포트설정/플렉스 반영(헤더메인푸터:세로로/한방에중앙정렬) -->
    <header>
      <%@ include file="/jsp/header/header.jsp" %>
      <%@ include file="/jsp/game/header/header.jsp" %>  
    </header>


    <main>
    <div class = "d-flex justify-content-evenly">
        
        <div id = "" class="card" style="width: 18rem;">
            <div class="img"><img id = "YOU" src = "${cPath }${imageFolder }/rock.jpg" style="width:14rem; height:14rem;"></div>
            <div class="card-body">
                <p>YOU</p>
                <input type="button" onclick="userChoice('가위')" value="가위"/>
                <input type="button" onclick="userChoice('바위')" value="바위"/>
                <input type="button" onclick="userChoice('보')" value="보"/>
            </div>
          </div>
         
        <div id = "JUDGE" class="card" style="width: 18rem;">
            <div class="img"><img id = "JUDGE" src = "${cPath }${imageFolder }/cinnamoroll.jpg" style="width:14rem; height:14rem;" ></div>
            <div class="card-body">
                <p>심판</p>
                <p id="result"></p>
            </div>
        </div>
    
        <div id = "COMPUTER" class="card" style="width: 18rem;">
            <div class="img"><img id = "COM" src = "${cPath }${imageFolder }/rock.jpg" style="width:14rem; height:14rem;"></div>
            <div class="card-body">
                <p>COM</p>
            </div>
          </div>

    </div>      
    <br>


  </main>


    <footer>
			<%@ include file="/jsp/game/footer/footer.jsp" %>
    </footer>
  <script src="${cPath }${jsFolder }/rsp.js"></script>  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>      
</body>
</html>