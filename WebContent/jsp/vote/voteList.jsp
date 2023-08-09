<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.global.vote.dto.VoteDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/vote" />
<c:set var="cssFolder" value="/static/css${subPath }"/>
<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<VoteDto> list = new ArrayList<VoteDto>();
list = (ArrayList<VoteDto>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>voteList</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${cPath }${cssFolder }/style.css"/>
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/vote/header/header.jsp" %>
</header>
<main class="d-flex h-100 text-center flex-column align-items-center">
<h2>∙ 투표검수조회 ∙</h2>
	<table>
		<tr>
			<th>성명</th>
			<th>생년월일</th>
			<th>나이</th>
			<th>성별</th>
			<th>후보번호</th>
			<th>투표시간</th>
			<th>유권자확인</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getV_name() %></td>
			<td><%=list.get(i).getV_jumin() %></td>
			<td><%=list.get(i).getV_age() %></td>
			<td><%=list.get(i).getV_gender() %></td>
			<td><%=list.get(i).getM_no() %></td>
			<td><%=list.get(i).getV_time() %></td>
			<td><%=list.get(i).getV_confirm() %></td>
		</tr>
		<%
		}
		%>
	</table>
</main>
<footer>
<%@ include file="/jsp/vote/footer/footer.jsp" %>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${cPath }${jsFolder}/script.js"></script>
</body>
</html>