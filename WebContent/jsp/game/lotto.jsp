<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }"/>
<c:set var="subPath" value="/game" />
<c:set var="imageFolder" value="/static/images${subPath }" />
<c:set var="jsFolder" value="/static/js${subPath }" />
<c:set var="cssFolder" value="/static/css${subPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GAME</title>
    <!-- 파비콘 시작 -->
        <%@ include file="/jsp/game/header/favicon.jsp"%>
    <!-- 파비콘 끝 -->
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="${cPath }${cssFolder}/lotto.css" />
</head>



<body class= "d-flex vw-100 vh-100 text-center flex-column justify-content-between"> 
     <!-- 화면크기 뷰포트설정/플렉스 반영(헤더메인푸터:세로로/한방에중앙정렬) -->
     <header>
      <%@ include file="/jsp/header/header.jsp" %>
      <%@ include file="/jsp/game/header/header.jsp" %>  
  </header>


    <main>
      <div class ="d-flex justify-content-center" style="font-family: gsm;" >
      <div class='ball'></div>
      <div class='ball'></div>
      <div class='ball'></div>
      <div class='ball'></div>
      <div class='ball'></div>
      <div class='ball'></div>
     </div>
     <input id="lotto-btn" type="button" value="button"/>
    </main>

    <footer>
			<%@ include file="/jsp/game/footer/footer.jsp" %>
    </footer>
    <script src="${cPath }${jsFolder }/lotto.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>