<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/vote" />
<c:set var="cssFolder" value="/static/css${subPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>voteMember</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${cPath }${cssFolder }/style.css"/>
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/vote/header/header.jsp" %>
</header>
<main class="d-flex h-100 flex-column align-items-center">
<h2>∙ 투표하기 ∙</h2>
<form id="form" method="post" action="vote.do">
	<table>
		<tr>
			<th>주민번호</th>
			<td>
			<input type="text" name="v_jumin" maxlength="13" > 예 : 8906153154726
			</td>
		</tr>
		<tr>
			<th>성명</th>
			<td>
			<input type="text" name="v_name">
			</td>
		</tr>
		<tr>
			<th>투표번호</th>
			<td>
			<select name="m_no">
				<option></option>
				<option value="1">[1]김후보</option>
				<option value="2">[2]이후보</option>
				<option value="3">[3]박후보</option>
				<option value="4">[4]조후보</option>
				<option value="5">[5]최후보</option>
			</select>		
			</td>
		</tr>
		<tr>
			<th>투표시간</th>
			<td>
			<input type="text" name="v_time" placeholder="예)0930" maxlength="4">
			</td>
		</tr>
		<tr>
			<th>투표장소</th>
			<td>
			<input type="text" name="v_area" placeholder="예)제1투표장">
			</td>
		</tr>
		<tr>
			<th>유권자확인</th>
			<td>
			<input style="float:none;" type="radio" name="v_confirm" value="Y">확인 
			<input style="float:none;" type="radio" name="v_confirm" value="N">미확인
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center">
			<input type="button" id="submit-btn" class="btn" value="투표하기"/>
			<button class="btn" type="button" onclick="fn_reset()">다시하기</button>
			</td>
		</tr>
	</table>
</form>
</main>
<footer>
<%@ include file="/jsp/vote/footer/footer.jsp" %>
</footer>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${cPath }${jsFolder}/script.js"></script>
</html>