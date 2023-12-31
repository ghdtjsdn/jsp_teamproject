<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.global.vote.dto.ResultDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cPath" value="${pageContext.request.contextPath }" />
<c:set var="subPath" value="/vote"/>
<c:set var="currentPath" value="${cPath }${subPath }" />
<c:set var="imageFolder" value="${cPath }/static/images${subPath }" />
<c:set var="cssFolder" value="${cPath }/static/css${subPath }" />
<c:set var="jsFolder" value="${cPath }/static/js${subPath }" />
<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<ResultDto> list = new ArrayList<ResultDto>();
list = (ArrayList<ResultDto>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>voteResult</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${cssFolder }/style.css"/>
</head>
<body class="d-flex w-100 vh-100 flex-column justify-content-between">
<header>
  <%@ include file="/jsp/header/header.jsp" %>
  <%@ include file="/jsp/vote/header/header.jsp" %>
</header>
<main class="d-flex h-100 text-center flex-column align-items-center">
<h2>∙ 후보자등수 ∙</h2>
	<table>
		<tr>
			<th>후보번호</th>
			<th>성명</th>
			<th>총투표건수</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getM_no()%></td>
			<td><%=list.get(i).getM_name()%></td>
			<td><%=list.get(i).getV_total() %></td>
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
<script src="${jsFolder}/script.js"></script>
</body>
</html>