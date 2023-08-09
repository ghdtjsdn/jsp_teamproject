<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- favicon -->
	<%@ include file="/jsp/golf/header/favicon.jsp" %>
<title>수강신청 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"rel="stylesheet">
  
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/golf/header/header.jsp" %>
</header>

<main class="d-flex w-100 h-100 flex-column align-items-center"
      style="background-color: var(--bs-gray-300);">
  <div class="d-flex flex-column align-items-center" style="width:600px;">
    <h1 class="mt-5 mb-3">수강신청</h1>

  <form id="regist-form" class="w-100" method="post">
    <table class="table table-bordered table-secondary">
      <tr>
        <th scope="row" class="w-25 text-center">수강월</th>
        <td class="w-75"><input id="regist-month" type="text" name="regist-month" placeholder="예)2022년 03월: 202203"/></td>
      </tr>
      <tr>
        <th scope="row" class="text-center">회원이름</th>
        <td>
          <select id="c-name" name="c-name">
            <option selected disabled>이름을 선택하세요</option>
            <option data-cno="10001" value="홍길동">홍길동</option>
            <option data-cno="10002" value="장발장">장발장</option>
            <option data-cno="10003" value="임꺽정">임꺽정</option>
            <option data-cno="20001" value="성춘향">성춘향</option>
            <option data-cno="20002" value="이몽룡">이몽룡</option>
<%--             <c:forEach var="member" items="${ memberList}">
            <option data-cno="${member.c_no }" value="${member.c_name }">${member.c_name }</option>
            </c:forEach> --%>
          </select>
        </td>
      </tr>
      <tr>
        <th scope="row" class="text-center">회원번호</th>
        <td><input id="c-no" readonly type="text" name="c-no"/> (자동입력)</td>
      </tr>
      <tr>
        <th scope="row" class="text-center">강의장소</th>
        <td>
          <select id="class-area" name="class-area">
            <option selected disabled>강의장소를 선택하세요</option>
            <option value="서울본원">서울본원</option>
            <option value="성남분원">성남분원</option>
            <option value="대전분원">대전분원</option>
            <option value="부산분원">부산분원</option>
            <option value="대구분원">대구분원</option>
<%--             <c:forEach var="member" items="${ memberList}">
            <option data-cno="${member.c_no }" value="${member.c_name }">${member.c_name }</option>
            </c:forEach> --%>            
          </select>
        </td>
      </tr>
      <tr>
        <th scope="row" class="text-center">강의명</th>
        <td>
          <select id="class-name" name="class-name">
            <option selected disabled>강의명을 선택하세요</option>
            <option data-tuition="100000" value="초급반">초급반</option>
            <option data-tuition="200000" value="중급반">중급반</option>
            <option data-tuition="300000" value="고급반">고급반</option>
            <option data-tuition="400000" value="심화반">심화반</option>
          </select>
        </td>
      </tr>
      <tr>
        <th scope="row" class="text-center">수강료</th>
        <td>
          <input id="tuition" readonly type="text" name="tuition"/>
          원 <span id="bargain"></span>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <div class="d-flex justify-content-center align-items-center">
            <input id="submit" class="m-2" type="button" value="수강신청" />
            <input class="m-2" type="reset" value="다시쓰기" />
          </div>
        </td>
      </tr>
    </table>
  </form>
  </div>
</main>
<footer>
  <%@ include file="/jsp/golf/footer/footer.jsp" %>
</footer>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="${cPath }${jsFolder }/regist-page.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> 
</body>
</html>